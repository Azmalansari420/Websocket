 <?php 
include('include/header.php');
include('include/sidebar.php');
?>

      
      <!-- Overlay -->
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            
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
            <div id="map" style="width: 100%; height: 100%;"></div>
         </div>

         <!-- Search Section -->
         <div class="search-card p-3">
            <!-- Main Tabs -->
            <div class="d-flex justify-content-between mb-3">
               <button type="button" class="btn btn-outline-warning w-50 me-1 active" id="tab-local" onclick="selectMainTab('local')">Local</button>
               <button type="button" class="btn btn-outline-warning w-50 ms-1" id="tab-outstation" onclick="selectMainTab('outstation')">Outstation</button>
            </div>

            <!-- Sub Tabs (only for Outstation) -->
            <div class="d-flex justify-content-between mb-3" id="subTabsContainer" style="display: none;">
               <button type="button" class="btn btn-warning w-50 me-1 active" onclick="selectSubTab('oneway')">One Way Trip</button>
               <button type="button" class="btn btn-outline-warning w-50 ms-1" onclick="selectSubTab('round')">Round Trip</button>
            </div>

            <!-- Dynamic Form -->
            <form action="trip-details.php">
               <!-- Pickup Date and Time -->
               <div class="row mb-3 pickup-date-time">
                  <div class="col-12 col-md-6">
                     <label class="form-label newform-font">Pickup Date</label>
                     <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-calendar3 text-primary-color"></i></span>
                        <input type="date" class="form-control">
                     </div>
                  </div>
                  <div class="col-12 col-md-6">
                     <label class="form-label newform-font">Time</label>
                     <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-clock text-primary-color"></i></span>
                        <input type="time" class="form-control">
                     </div>
                  </div>
               </div>

               <!-- Return Date (Round Trip only) -->
               <div class="mb-3" id="returnDateGroup" style="display: none;">
                  <label class="form-label newform-font">Return Date</label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-geo-alt text-primary-color"></i></span>
                     <input type="date" class="form-control">
                  </div>
               </div>

               <!-- From City -->
               <div class="mb-3">
                  <label class="form-label newform-font">Your Location </label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-geo-alt text-primary-color"></i></span>
                     <input type="text" class="form-control" placeholder="Current Location" value="delhi">
                  </div>
               </div>

               <!-- To City (Outstation only) -->
               <div class="mb-3" id="destinationCityGroup" style="display: none;">
                  <label class="form-label newform-font">Drop Location </label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-geo-alt-fill text-secondary-color"></i></span>
                     <input type="text" class="form-control" placeholder="Drop Location">
                  </div>
               </div>

               <!-- Local Rental Package -->
               <div class="mb-3" id="localSelectGroup" style="display: none;">
                  <label class="form-label newform-font">Select Local Package</label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-car-front text-primary-color"></i></span>
                     <select class="form-select">
                        <option>4 Hours / 40 KM</option>
                        <option>8 Hours / 80 KM</option>
                        <option>12 Hours / 120 KM</option>
                     </select>
                  </div>
               </div>

               <!-- Airport Type -->
               <div class="mb-3" id="airporttypeselectedgroup" style="display: none;">
                  <label class="form-label newform-font">Select Type</label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-person text-primary-color"></i></span>
                     <select class="form-select">
                        <option>To Airport</option>
                        <option>From Airport</option>
                     </select>
                  </div>
               </div>

               <!-- Airport Passenger Selection -->
               <div class="mb-3" id="airportselectedgroup" style="display: none;">
                  <label class="form-label newform-font">Select Airport</label>
                  <div class="input-group">
                     <span class="input-group-text"><i class="bi bi-person text-primary-color"></i></span>
                     <select class="form-select">
                        <option>1 Passenger</option>
                        <option>2 Passengers</option>
                        <option>3 Passengers</option>
                        <option>4+ Passengers</option>
                     </select>
                  </div>
               </div>

               <!-- Submit Button -->
               <button type="submit" class="btn btn-app w-100 text-white">
                  <i class="bi bi-search me-2"></i>Get Prices
               </button>
            </form>
         </div>


         
        
      </div>
      <!-- Bottom Navigation Bar (App-style) -->
      
  <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<!-- Load Google Maps JS API -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
<script>
   function initMap() {
      // Default fallback location
      const defaultLocation = { lat: 28.6139, lng: 77.2090 }; // Delhi

      const map = new google.maps.Map(document.getElementById("map"), {
         zoom: 14,
         center: defaultLocation,
      });

      const marker = new google.maps.Marker({
         position: defaultLocation,
         map: map,
         title: "Default Location"
      });

      // Try HTML5 geolocation
      if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(
            function (position) {
               const userLocation = {
                  lat: position.coords.latitude,
                  lng: position.coords.longitude,
               };

               map.setCenter(userLocation);
               marker.setPosition(userLocation);
               marker.setTitle("Your Current Location");
            },
            function () {
               console.warn("Geolocation permission denied or failed.");
            }
         );
      } else {
         console.warn("Browser doesn't support Geolocation");
      }
   }

   window.onload = function () {
      initMap();
      selectMainTab('local'); // Your existing tab logic
   };
</script>



<script>
   let currentMainTab = 'local'; // Default to 'local'
   let currentSubTab = 'localrental'; // Default sub tab for local

   function selectMainTab(tab) {
      currentMainTab = tab;

      // Toggle active tab classes
      document.getElementById('tab-outstation').classList.remove('active');
      document.getElementById('tab-local').classList.remove('active');
      document.getElementById('tab-' + tab).classList.add('active');

      const subTabsContainer = document.getElementById('subTabsContainer');
      subTabsContainer.innerHTML = '';

      if (tab === 'outstation') {
         subTabsContainer.style.display = 'flex'; // show sub-tabs
         subTabsContainer.innerHTML = `
            <button type="button" class="btn btn-warning w-50 me-1 active" onclick="selectSubTab('oneway')">One Way Trip</button>
            <button type="button" class="btn btn-outline-warning w-50 ms-1" onclick="selectSubTab('round')">Round Trip</button>
         `;
         currentSubTab = 'oneway';
      } else {
         subTabsContainer.style.display = 'none'; // hide sub-tabs
         currentSubTab = 'localrental';
      }

      updateFormFields();
   }

   function selectSubTab(tab) {
      currentSubTab = tab;

      // Reset sub-tab button classes
      const subTabs = document.querySelectorAll('#subTabsContainer .btn');
      subTabs.forEach(btn => btn.classList.remove('btn-warning', 'btn-outline-warning', 'active'));
      event.target.classList.add('btn-warning', 'active');

      updateFormFields();
   }

   function updateFormFields() {
   const destinationCityGroup = document.getElementById('destinationCityGroup');
   const localSelectGroup = document.getElementById('localSelectGroup');
   const returnDateGroup = document.getElementById('returnDateGroup');
   const airporttypeselectedgroup = document.getElementById('airporttypeselectedgroup');
   const airportselectedgroup = document.getElementById('airportselectedgroup');

   // Pickup date/time fields
   const pickupDateTime = document.querySelectorAll('.pickup-date-time');
   pickupDateTime.forEach(el => el.style.display = 'none');

   // Default hide all optional sections
   destinationCityGroup.style.display = 'none';
   localSelectGroup.style.display = 'none';
   returnDateGroup.style.display = 'none';
   airporttypeselectedgroup.style.display = 'none';
   airportselectedgroup.style.display = 'none';

   // Show relevant fields based on current tab
   if (currentMainTab === 'outstation') {
      destinationCityGroup.style.display = 'block';
      pickupDateTime.forEach(el => el.style.display = 'block');

      if (currentSubTab === 'round') {
         returnDateGroup.style.display = 'block';
      }
   }

   if (currentMainTab === 'local') {
      destinationCityGroup.style.display = 'block'; // Show To City also for local
      // Do NOT show any additional local fields like localSelectGroup
   }
}


   // Run on load
   window.onload = function () {
      selectMainTab('local'); // Set default tab on page load
   };
</script>

