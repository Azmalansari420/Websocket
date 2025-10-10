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
   
</style>


      <!-- Main Content Area -->
      <div class="content-area">
         <!-- Search Section -->
         <div class="search-card p-3">
            
            <!-- Main Tabs -->
            <div class="d-flex justify-content-between mb-3">
               <button type="button" class="btn btn-outline-warning w-50 me-1 active" id="tab-outstation" onclick="selectMainTab('outstation')">Outstation</button>
               <button type="button" class="btn btn-outline-warning w-50 ms-1" id="tab-local" onclick="selectMainTab('local')">Local / Airport</button>
            </div>

            <!-- Sub Tabs -->
            <div class="d-flex justify-content-between mb-3" id="subTabsContainer">
               <button type="button" class="btn btn-outline-warning w-50 me-1 " onclick="selectSubTab('round')">Round Trip</button>
               <button type="button" class="btn btn-warning w-50 ms-1 active" onclick="selectSubTab('oneway')">One Way Trip</button>
            </div>

            <!-- Dynamic Form -->
            <form action="trip-details.php">
               <div class="row mb-3">
                  <div class="col-6">
                     <label class="form-label newform-font">Pickup Date</label>
                     <div class="input-group">
                        <span class="input-group-text">
                           <i class="bi bi-calendar3 text-primary-color"></i>
                        </span>
                        <input type="date" class="form-control">
                     </div>
                  </div>
                  <div class="col-6">
                     <label class="form-label newform-font">Time</label>
                     <div class="input-group">
                        <span class="input-group-text">
                           <i class="bi bi-clock text-primary-color"></i>
                        </span>
                        <input type="time" class="form-control">
                     </div>
                  </div>
               </div>

               <div class="mb-3" id="returnDateGroup" style="display: none;">
                  <label class="form-label newform-font">Return Date</label>
                  <div class="input-group">
                     <span class="input-group-text">
                        <i class="bi bi-geo-alt text-primary-color"></i>
                     </span>
                     <input type="date" class="form-control">
                  </div>
               </div>

               <div class="mb-3">
                  <label class="form-label newform-font">From City</label>
                  <div class="input-group">
                     <span class="input-group-text">
                        <i class="bi bi-geo-alt text-primary-color"></i>
                     </span>
                     <input type="text" class="form-control" placeholder="Enter Pickup City">
                  </div>
               </div>

               <div class="mb-3" id="destinationCityGroup">
                  <label class="form-label newform-font">To City</label>
                  <div class="input-group">
                     <span class="input-group-text">
                        <i class="bi bi-geo-alt-fill text-secondary-color"></i>
                     </span>
                     <input type="text" class="form-control" placeholder="Enter Destination City">
                  </div>
               </div>

               <div class="mb-3" id="localSelectGroup" style="display: none;">
                  <label class="form-label newform-font">Select Local Package</label>
                  <div class="input-group">
                     <span class="input-group-text">
                        <i class="bi bi-car-front text-primary-color"></i>
                     </span>
                     <select class="form-select">
                        <option>4 Hours / 40 KM</option>
                        <option>8 Hours / 80 KM</option>
                        <option>12 Hours / 120 KM</option>
                     </select>
                  </div>
               </div>

               

               <div class="mb-3" id="airporttypeselectedgroup" style="display: none;">
                  <label class="form-label newform-font">Select Type</label>
                  <div class="input-group">
                     <span class="input-group-text">
                        <i class="bi bi-person text-primary-color"></i>
                     </span>
                     <select class="form-select">
                        <option>To Airport</option>
                        <option>From Airport</option>
                     </select>
                  </div>
               </div>

               <div class="mb-3" id="airportselectedgroup" style="display: none;">
                  <label class="form-label newform-font">Select Airport</label>
                  <div class="input-group">
                     <span class="input-group-text">
                        <i class="bi bi-person text-primary-color"></i>
                     </span>
                     <select class="form-select">
                        <option>1 Passenger</option>
                        <option>2 Passengers</option>
                        <option>3 Passengers</option>
                        <option>4+ Passengers</option>
                     </select>
                  </div>
               </div>

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




<script>
   let currentMainTab = 'outstation';
   let currentSubTab = 'oneway';

   function selectMainTab(tab) {
      currentMainTab = tab;
      // Main tab toggle
      document.getElementById('tab-outstation').classList.remove('active');
      document.getElementById('tab-local').classList.remove('active');
      document.getElementById('tab-' + tab).classList.add('active');

      const subTabsContainer = document.getElementById('subTabsContainer');
      subTabsContainer.innerHTML = '';

      if (tab === 'outstation') {
         subTabsContainer.innerHTML = `
            <button type="button" class="btn btn-warning w-50 me-1 active" onclick="selectSubTab('oneway')">One Way Trip</button>
            <button type="button" class="btn btn-outline-warning w-50 ms-1" onclick="selectSubTab('round')">Round Trip</button>
         `;
         currentSubTab = 'oneway';
      } else {
         subTabsContainer.innerHTML = `
            <button type="button" class="btn btn-warning w-50 me-1 active" onclick="selectSubTab('localrental')">Local Rental</button>
            <button type="button" class="btn btn-outline-warning w-50 ms-1" onclick="selectSubTab('airport')">Airport Transfer</button>
         `;
         currentSubTab = 'localrental';
      }

      updateFormFields();
   }

   function selectSubTab(tab) {
      currentSubTab = tab;

      // Reset sub-tab styles
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

   // Default hide
   destinationCityGroup.style.display = 'none';
   localSelectGroup.style.display = 'none';
   returnDateGroup.style.display = 'none';
   airporttypeselectedgroup.style.display = 'none';
   airportselectedgroup.style.display = 'none';

   if (currentMainTab === 'outstation') {
      destinationCityGroup.style.display = 'block';

      if (currentSubTab === 'round') {
         returnDateGroup.style.display = 'block';
      }
   }

   if (currentMainTab === 'local') {
      if (currentSubTab === 'localrental') {
         localSelectGroup.style.display = 'block';
      }

      if (currentSubTab === 'airport') {
         airporttypeselectedgroup.style.display = 'block';
         airportselectedgroup.style.display = 'block';
      }
   }
}

</script>
