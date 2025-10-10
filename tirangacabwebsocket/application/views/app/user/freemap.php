<!-- Include Leaflet CSS -->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />

<!-- Optional stronger map styling -->
<style>
  #map {
    width: 100% !important;
    height: 100% !important;
    min-height: 250px;
  }

  .map-wrapper {
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    overflow: hidden;
  }

  .search-card {
    margin-top: -29px;
    background-color: white;
    border-radius: 20px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    position: relative;
    z-index: 5;
  }
</style>

<!-- Map Section -->
<div class="map-wrapper position-relative" style="height: 250px;">
  <div id="map"></div>
</div>

<!-- Auto-filled Location Inputs -->
<div class="mb-3">
  <label class="form-label">Detected Location Name</label>
  <input type="text" id="locationName" class="form-control" placeholder="Fetching location..." >
</div>

<div class="row">
  <div class="col-6 mb-3">
    <label class="form-label">Latitude</label>
    <input type="text" id="latitude" class="form-control" readonly>
  </div>
  <div class="col-6 mb-3">
    <label class="form-label">Longitude</label>
    <input type="text" id="longitude" class="form-control" readonly>
  </div>
</div>


<!-- Your existing content like search-card etc... -->

<!-- Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<script>
  let map, marker; // Global

  function initLeafletMap() {
    const defaultCoords = [28.6139, 77.2090];
    map = L.map('map').setView(defaultCoords, 13);

    // Add map tiles
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    marker = L.marker(defaultCoords).addTo(map).bindPopup("Default Location").openPopup();

    // Try geolocation
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function (position) {
        const lat = position.coords.latitude;
        const lng = position.coords.longitude;
        updateMapAndFields(lat, lng, true);
      });
    }

    // When user types and presses Enter in the location input
    document.getElementById("locationName").addEventListener("keypress", function (e) {
      if (e.key === "Enter") {
        e.preventDefault();
        const query = this.value;
        searchLocation(query);
      }
    });
  }

  // 🔍 Search location by name
  function searchLocation(query) {
    fetch(`https://nominatim.openstreetmap.org/search?format=json&q=${encodeURIComponent(query)}`)
      .then(response => response.json())
      .then(data => {
        if (data && data.length > 0) {
          const place = data[0];
          const lat = parseFloat(place.lat);
          const lon = parseFloat(place.lon);
          updateMapAndFields(lat, lon, false, place.display_name);
        } else {
          alert("Location not found.");
        }
      });
  }

  // 📍 Update map + inputs
  function updateMapAndFields(lat, lon, reverse = false, address = '') {
    const coords = [lat, lon];
    map.setView(coords, 15);
    marker.setLatLng(coords).bindPopup("Selected Location").openPopup();

    document.getElementById("latitude").value = lat.toFixed(6);
    document.getElementById("longitude").value = lon.toFixed(6);

    if (reverse) {
      fetch(`https://nominatim.openstreetmap.org/reverse?format=json&lat=${lat}&lon=${lon}`)
        .then(res => res.json())
        .then(data => {
          document.getElementById("locationName").value = data.display_name || "";
        });
    } else {
      document.getElementById("locationName").value = address;
    }
  }

  // 👇 On page load
  window.onload = function () {
    initLeafletMap();
    selectMainTab('local');
  };
</script>

