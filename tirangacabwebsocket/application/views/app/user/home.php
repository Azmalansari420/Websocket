
<?php 
include('include/header.php');
include('include/sidebar.php');
?>


      
      <!-- Overlay -->
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn me-2">
               <i class="bi bi-list menu-icon"></i>
            </button>
            <button id="switchTabBtn" class="btn btn-sm btn-outline-warning" style="background: #ffc107;font-size: 12px;"></button>
         </div>
         <div>
            <div class="d-flex align-items-center">
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title"><?=website_name ?></span>
            </div>
         </div>
      </div>


<style>
   .map-wrapper iframe {
   border-radius: 10px;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.search-card {
   margin-top: -29px; /* Pull up to overlap the map slightly */
   background-color: white;
   border-radius: 20px;
   box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
   position: relative;
   z-index: 5;
}

</style>


      <!-- Main Content Area -->
      <div class="content-area">
         <!-- Map Section -->
         <div class="map-wrapper position-relative" style="height: 250px;">
            <!-- Map Embed or Placeholder -->
            <div id="map" style="height: 250px; width: 100%;"></div>

         </div>

         <!-- Search Section -->
         <div class="search-card p-3">
            <!-- Main Tabs -->
            

            <!-- Sub Tabs (only for Outstation) -->
            <div class="d-flex justify-content-between mb-3" id="subTabsContainer" style="display: none;">
               <button type="button" class="btn btn-warning w-50 me-1 active" onclick="selectSubTab('oneway')">One Way Trip</button>
               <button type="button" class="btn btn-outline-warning w-50 ms-1" onclick="selectSubTab('round')">Round Trip</button>
            </div>

            <!-- Dynamic Form -->
            <form id="tripForm" method="post">

               <input type="hidden" name="trip_type" id="trip_type">
               <input type="hidden" name="sub_trip" id="sub_trip">

               <!-- Pickup Date and Time -->
               <div class="row mb-3 pickup-date-time">
                  <div class="col-12 col-md-12">
                     <label class="form-label newform-font">Pickup Date/Time</label>
                     <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-calendar3 text-primary-color"></i></span>
                        <input type="datetime-local" class="form-control" name="pickup_date_time">
                     </div>
                  </div>
               </div>

               <!-- Return Date (Round Trip only) -->
               <div class="mb-3" id="returnDateGroup" style="display: none;">
                  <label class="form-label newform-font">Return Date</label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-geo-alt text-primary-color"></i></span>
                     <input type="datetime-local" class="form-control" name="return_date_time">
                  </div>
               </div>

               <!-- From City -->
               <div class="mb-3">
                 <label class="form-label newform-font">Your Location </label>
                 <div class="input-group">
                   <span class="input-group-text"><i class="bi bi-geo-alt text-primary-color"></i></span>
                   <input id="location-input" type="text" class="form-control" placeholder="Current Location" name="pickup_location">
                 </div>
               </div>

               <!-- To City (Outstation only) -->
               <div class="mb-3" id="destinationCityGroup" style="display: none;">
                  <label class="form-label newform-font">Drop Location </label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-geo-alt-fill text-secondary-color"></i></span>
                     <input id="drop-location-input" type="text" class="form-control" placeholder="Drop Location" name="drop_location">
                  </div>
               </div>

               

               <!-- Submit Button -->
               <button type="submit" class="btn btn-app w-100 text-white">
                  <i class="bi bi-search me-2"></i>Search Car
               </button>
            </form>
         </div>


         
        
      </div>
      <!-- Bottom Navigation Bar (App-style) -->
      
     <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>


<script src="https://maps.googleapis.com/maps/api/js?key=<?=google_API ?>&libraries=places"></script>

<script>
let map, marker, autocomplete, dropAutocomplete;
let pickupCoords = null;
let dropCoords = null;
let routeLine = null; // NEW
let directionsRenderer = null; // 👈 Global reference


function initMap() 
{
  const defaultLocation = { lat: 28.6139, lng: 77.2090 };

  map = new google.maps.Map(document.getElementById("map"), {
    center: defaultLocation,
    zoom: 13,
  });

  marker = new google.maps.Marker({
    map: map,
    position: defaultLocation,
    draggable: true
  });

  // Try Geolocation
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      (position) => {
        const pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
        };
        map.setCenter(pos);
        marker.setPosition(pos);
        getAddressFromCoords(pos);
        pickupCoords = pos; // Store pickup coords
      },
      () => console.warn("Geolocation failed.")
    );
  }

  // Autocomplete for Pickup
  const input = document.getElementById("location-input");
  autocomplete = new google.maps.places.Autocomplete(input, {
    types: ['geocode'],
    componentRestrictions: { country: "in" },
  });

  autocomplete.addListener("place_changed", () => {
    const place = autocomplete.getPlace();
    if (!place.geometry) return;

    const location = place.geometry.location;
    map.setCenter(location);
    marker.setPosition(location);

    pickupCoords = {
      lat: location.lat(),
      lng: location.lng()
    };

    if (pickupCoords && dropCoords) {
      calculateDistance(pickupCoords, dropCoords);
    }
  });

  // Autocomplete for Drop Location
  const dropInput = document.getElementById("drop-location-input");
  dropAutocomplete = new google.maps.places.Autocomplete(dropInput, {
    types: ['geocode'],
    componentRestrictions: { country: "in" },
  });

  dropAutocomplete.addListener("place_changed", () => {
    const place = dropAutocomplete.getPlace();
    if (!place.geometry) return;

    const location = place.geometry.location;

    dropCoords = {
      lat: location.lat(),
      lng: location.lng()
    };

    if (pickupCoords && dropCoords) {
      calculateDistance(pickupCoords, dropCoords);
    }
  });

  // Marker drag event updates pickup address
  marker.addListener('dragend', function () {
    const pos = marker.getPosition();
    const coords = { lat: pos.lat(), lng: pos.lng() };
    getAddressFromCoords(coords);
    pickupCoords = coords;

    if (pickupCoords && dropCoords) {
      calculateDistance(pickupCoords, dropCoords);
    }
  });
}

// Reverse Geocode
function getAddressFromCoords(latlng) 
{
  const geocoder = new google.maps.Geocoder();
  geocoder.geocode({ location: latlng }, (results, status) => {
    if (status === "OK" && results[0]) {
      document.getElementById("location-input").value = results[0].formatted_address;
    }
  });
}

// Distance Calculation
function calculateDistance(origin, destination) 
{
  const directionsService = new google.maps.DirectionsService();

  // If there's already a route drawn, remove it
  if (directionsRenderer) {
    directionsRenderer.setMap(null);
    directionsRenderer = null;
  }

  // New DirectionsRenderer
  directionsRenderer = new google.maps.DirectionsRenderer({
    suppressMarkers: true,
    polylineOptions: {
      strokeColor: "#FF0000",
      strokeOpacity: 0.8,
      strokeWeight: 5
    }
  });

  directionsRenderer.setMap(map);

  directionsService.route(
    {
      origin: origin,
      destination: destination,
      travelMode: google.maps.TravelMode.DRIVING,
    },
    (response, status) => {
      if (status === "OK") {
        directionsRenderer.setDirections(response);

        // Remove existing markers if any
        if (window.startMarker) window.startMarker.setMap(null);
        if (window.endMarker) window.endMarker.setMap(null);

        const leg = response.routes[0].legs[0];

        // Start marker
        window.startMarker = new google.maps.Marker({
          position: leg.start_location,
          map: map,
          title: "Pickup Location",
          icon: "http://maps.google.com/mapfiles/ms/icons/green-dot.png",
        });

        // End marker
        window.endMarker = new google.maps.Marker({
          position: leg.end_location,
          map: map,
          title: "Drop Location",
          icon: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
        });
        toaster(`Distance: ${leg.distance.text}, Time: ${leg.duration.text}`, 'success');
      } else {
        console.error("Directions request failed due to " + status);
      }
    }
  );
}



/*=[=======================*/





let currentMainTab = 'local';
let currentSubTab = 'localrental';


function updateTripType() 
{
    let typeValue = "";
    let subValue = "";

    if (currentMainTab === "local") 
    {
        typeValue = "1"; 
        subValue = "0"; 
    } 
    else if (currentMainTab === "outstation") 
    {
        typeValue = "2"; 

        if (currentSubTab === "oneway") {
            subValue = "1"; 
        } 
        else if (currentSubTab === "round") {
            subValue = "2"; 
        }
    }

    document.getElementById("trip_type").value = typeValue;
    document.getElementById("sub_trip").value = subValue;
}




   function selectMainTab(tab) 
   {
      currentMainTab = tab;
      const switchBtn = document.getElementById('switchTabBtn');
      if (currentMainTab === 'local') {
         switchBtn.innerText = 'Switch to Outstation';
         switchBtn.setAttribute('onclick', "selectMainTab('outstation')");
      } else {
         switchBtn.innerText = 'Switch to Local';
         switchBtn.setAttribute('onclick', "selectMainTab('local')");
      }


      const subTabsContainer = document.getElementById('subTabsContainer');
      subTabsContainer.innerHTML = '';

      if (tab === 'outstation') {
         subTabsContainer.style.display = 'flex'; 
         subTabsContainer.innerHTML = `
            <button type="button" class="btn btn-warning w-50 me-1 active" onclick="selectSubTab('oneway')">One Way Trip</button>
            <button type="button" class="btn btn-outline-warning w-50 ms-1" onclick="selectSubTab('round')">Round Trip</button>
         `;
         currentSubTab = 'oneway';
      } else {
         subTabsContainer.style.display = 'none'; 
         currentSubTab = 'localrental';
      }

      updateFormFields();
      updateTripType();  
   }


   function selectSubTab(tab) 
   {
      currentSubTab = tab;
      const subTabs = document.querySelectorAll('#subTabsContainer .btn');
      subTabs.forEach(btn => btn.classList.remove('btn-warning', 'btn-outline-warning', 'active'));
      event.target.classList.add('btn-warning', 'active');

      updateFormFields();
      updateTripType(); 
   }

   function updateFormFields() {
   const destinationCityGroup = document.getElementById('destinationCityGroup');
   const returnDateGroup = document.getElementById('returnDateGroup');

   // Pickup date/time fields
   const pickupDateTime = document.querySelectorAll('.pickup-date-time');
   pickupDateTime.forEach(el => el.style.display = 'none');
   destinationCityGroup.style.display = 'none';
   returnDateGroup.style.display = 'none';

   if (currentMainTab === 'outstation') {
      destinationCityGroup.style.display = 'block';
      pickupDateTime.forEach(el => el.style.display = 'block');

      if (currentSubTab === 'round') {
         returnDateGroup.style.display = 'block';
      }
   }

   if (currentMainTab === 'local') {
      destinationCityGroup.style.display = 'block'; 
   }
}

   window.onload = function () {
   initMap();
   selectMainTab('local'); 
   updateTripType(); 
};











$("#tripForm").on("submit", function(e)
{
    e.preventDefault();
    $.ajax({
        url: "<?= base_url('api/booking/save') ?>", 
        type: "POST",
        data: $(this).serialize(),
        success: function(response){
            let res = JSON.parse(response);
            if(res.status === "success")
            {
               // toaster("✅ Trip saved Successfully!", 'success');
               window.location.href = res.redirect;
            } else 
            {
               toaster("❌ Error: " + res.message, 'error');
            }
        }
    });
});





</script>

