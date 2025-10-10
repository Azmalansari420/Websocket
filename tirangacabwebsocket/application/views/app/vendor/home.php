
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
       

         <!-- Search Section -->
         <div class="search-card p-3 mt-0">
            <!-- Main Tabs -->
            <div class="d-flex justify-content-between mb-3">
               <button type="button" class="btn btn-outline-warning w-50 me-1 active" id="tab-new-booking" onclick="selectMainTab('new-booking')">Active Car</button>
               <button type="button" class="btn btn-outline-warning w-50 ms-1" id="tab-active-booking" onclick="selectMainTab('active-booking')">InActive Car</button>
            </div>

           
            <div id="new-booking" class="tab-content">
               


               <div class="list-item">
                  <div class="d-flex justify-content-between align-items-start mb-2">
                     <div>
                        <div class="d-flex align-items-center">
                           <span class="fw-semibold text-primary-color">TATA, XUV 500 [DLDF12365] </span>
                        </div>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between mb-3">
                     <div class="d-flex align-items-center">
                        <i class="bi bi-calendar3 me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">Apr 15, 2025</span>
                     </div>
                     <div class="d-flex align-items-center">
                        <i class="bi bi-clock me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">10:30 AM</span>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between align-items-center">
                     <div>
                        <div class="fw-semibold">Amit Kumar</div>
                        <div class="small text-muted">Premium Seat • Window</div>
                     </div>
                     <!-- <a href="my-tickets.html" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                     View Ticket
                     </a> -->
                  </div>
               </div>

               <div class="list-item">
                  <div class="d-flex justify-content-between align-items-start mb-2">
                     <div>
                        <div class="d-flex align-items-center">
                           <span class="fw-semibold text-primary-color">MAHINDRA, Innova Crysta [DLDF12365]</span>
                        </div>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between mb-3">
                     <div class="d-flex align-items-center">
                        <i class="bi bi-calendar3 me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">Apr 15, 2025</span>
                     </div>
                     <div class="d-flex align-items-center">
                        <i class="bi bi-clock me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">12:21 AM</span>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between align-items-center">
                     <div>
                        <div class="fw-semibold">Amit Kumar</div>
                        <div class="small text-muted">Premium Seat • Window</div>
                     </div>
                     <!-- <a href="my-tickets.html" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                     View Ticket
                     </a> -->
                  </div>
               </div>

           </div>

           <div id="active-booking" class="tab-content d-none">

               <div class="list-item">
                  <div class="d-flex justify-content-between align-items-start mb-2">
                     <div>
                        <div class="d-flex align-items-center">
                           <span class="fw-semibold text-primary-color">BOLERO, Mobilio [DLDF12365]</span>
                        </div>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between mb-1">
                     <div class="d-flex align-items-center">
                        <i class="bi bi-calendar3 me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">Apr 15, 2025</span>
                     </div>
                     <div class="d-flex align-items-center">
                        <i class="bi bi-clock me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">10:30 AM</span>
                     </div>
                  </div>
                  <!-- <div class="d-flex justify-content-between align-items-center">
                     <div>
                        <div class="fw-semibold">Amit Kumar</div>
                        <div class="small text-muted">Premium Seat • Window</div>
                     </div>
                     <a href="my-tickets.html" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                     View Ticket
                     </a>
                  </div> -->
               </div>
               <div class="list-item">
                  <div class="d-flex justify-content-between align-items-start mb-2">
                     <div>
                        <div class="d-flex align-items-center">
                           <span class="fw-semibold text-primary-color">BOLERO, Mobilio [DLDF12365]</span>
                        </div>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between mb-1">
                     <div class="d-flex align-items-center">
                        <i class="bi bi-calendar3 me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">Apr 15, 2025</span>
                     </div>
                     <div class="d-flex align-items-center">
                        <i class="bi bi-clock me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">10:30 AM</span>
                     </div>
                  </div>
                  <!-- <div class="d-flex justify-content-between align-items-center">
                     <div>
                        <div class="fw-semibold">Amit Kumar</div>
                        <div class="small text-muted">Premium Seat • Window</div>
                     </div>
                     <a href="my-tickets.html" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                     View Ticket
                     </a>
                  </div> -->
               </div>
               <div class="list-item">
                  <div class="d-flex justify-content-between align-items-start mb-2">
                     <div>
                        <div class="d-flex align-items-center">
                           <span class="fw-semibold text-primary-color">BOLERO, Mobilio [DLDF12365]</span>
                        </div>
                     </div>
                  </div>
                  <div class="d-flex justify-content-between mb-1">
                     <div class="d-flex align-items-center">
                        <i class="bi bi-calendar3 me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">Apr 15, 2025</span>
                     </div>
                     <div class="d-flex align-items-center">
                        <i class="bi bi-clock me-2 text-secondary-color fs-14"></i>
                        <span class="text-muted">10:30 AM</span>
                     </div>
                  </div>
                  <!-- <div class="d-flex justify-content-between align-items-center">
                     <div>
                        <div class="fw-semibold">Amit Kumar</div>
                        <div class="small text-muted">Premium Seat • Window</div>
                     </div>
                     <a href="my-tickets.html" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                     View Ticket
                     </a>
                  </div> -->
               </div>



           </div>
            
         </div>


         
        
      </div>
      <!-- Bottom Navigation Bar (App-style) -->
      
<?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>
  function selectMainTab(tab) {
    // Hide all tab content
    document.querySelectorAll('.tab-content').forEach(function(el) {
      el.classList.add('d-none');
    });

    // Remove active class from all buttons
    document.querySelectorAll('.search-card .btn').forEach(function(btn) {
      btn.classList.remove('active');
    });

    // Show selected tab
    document.getElementById(tab).classList.remove('d-none');

    // Activate the correct button
    document.getElementById('tab-' + tab).classList.add('active');
  }
</script>
