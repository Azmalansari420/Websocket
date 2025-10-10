 <?php 
include('include/header.php');
include('include/sidebar.php');
?> 
<style>
   .text-muted {
    color: black!important;
}

.bus-card {
   border: 1px solid #f0f0f0;
   border-radius: 10px;
   background: #fff;
   transition: 0.3s ease;
}
.bus-card:hover {
   box-shadow: 0 2px 8px rgba(0,0,0,0.1);
   transform: scale(1.01);
}
.bus-item {
    margin-bottom: 8px;
}
.discount-badge {
    position: absolute;
    top: -12px;
    left: 0;
    background-color: #ff9800;
    color: white;
    font-size: 10px;
    font-weight: 500;
    padding: 2px 6px;
    border-radius: 4px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
    z-index: 2;
    width: 100%;
    text-align: center;
}
.active-tab {
    background: red;
    color: white;
}

.btn-bestprice {
    font-size: 12px;
}

</style>
     
      <!-- Overlay -->
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
               <span class="app-header-title">Trip Details</span>
            </div>
         </div>
      </div>
      <!-- Content Container -->
      <div class="p-3">
         <!-- Journey Details Summary -->
         <div class="journey-summary bg-primary-light p-3 rounded-3 mb-3">
            <div class="mb-2">
               <button class="btn btn-app text-white">Round Way Trip</button>
            </div>

            <div class="d-flex justify-content-between">
               <div>
                  <div class="text-muted small">From</div>
                  <div class="fw-bold">Delhi </div>
                  <div class="mt-2">
                     <div class="text-muted small">Date/Time</div>
                     <div class="fw-bold">June 15, 2025 12:05 AM</div>
                  </div>
               </div>
               <div class="align-self-center">
                  <i class="bi bi-arrow-right text-primary-color fs-24"></i>
               </div>
               <div>
                  <div class="text-muted small">To</div>
                  <div class="fw-bold">Mumbai</div>
                  <div class="mt-2">
                     <div class="text-muted small">Retuen Date</div>
                     <div class="fw-bold">June 17, 2025 </div>
                  </div>
               </div>
            </div>
         </div>

         <!-- Sort and Results Count -->
         <div class="d-flex justify-content-center align-items-center mb-3 ">
            <button onclick="selectPriceTab('bestprice')" id="btn-bestprice" class="btn btn-warning me-2 btn-bestprice">
            Best Price
         </button>
         <button onclick="selectPriceTab('tolltaxes')" id="btn-tolltaxes" class="btn btn-outline-warning btn-bestprice">
            Toll, State Tax Inclusive Price
         </button>
         </div>
         <!-- Bus Listings -->
         <div class="bus-list" id="bestprice" >
            <!-- Bus Item 1 -->
            <a href="car-details.php" class="bus-item">
               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <!-- Car Image and Discount -->
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="https://easemytaxi.com/media/uploads/vehicles/1749880189.webp" class="img-fluid" alt="Hatchback" style="width: 100%;">
                     <div class="discount-badge">10% Discount</div>
                  </div>

                  <!-- Car Info -->
                  <div class="flex-grow-1">
                     <div class="fw-bold">HATCHBACK (AC)</div>
                     <div class="text-muted small mb-2">Swift, WagonR or Similar</div>
                     <div class="fw-bold text-dark">₹ 663 <span class="text-muted text-decoration-line-through">₹ 737</span></div>
                  </div>
               </div>
            </a>
            <!-- Bus Item 1 -->
            <a href="car-details.php" class="bus-item">
               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <!-- Car Image and Discount -->
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="https://easemytaxi.com/media/uploads/vehicles/1749880228.webp" class="img-fluid" alt="Hatchback" style="width: 100%;">
                     <div class="discount-badge">10% Discount</div>
                  </div>

                  <!-- Car Info -->
                  <div class="flex-grow-1">
                     <div class="fw-bold">Ertiga Maruti</div>
                     <div class="text-muted small mb-2">Swift, WagonR or Similar</div>
                     <div class="fw-bold text-dark">₹ 663 <span class="text-muted text-decoration-line-through">₹ 737</span></div>
                  </div>
               </div>
            </a>

            
         </div>

         <div class="bus-list" id="tolltaxes" style="display: none;">
            
            <!-- Bus Item 1 -->
            <a href="car-details.php" class="bus-item">
               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <!-- Car Image and Discount -->
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="https://easemytaxi.com/media/uploads/vehicles/1749880189.webp" class="img-fluid" alt="Hatchback" style="width: 100%;">
                     <div class="discount-badge">10% Discount</div>
                  </div>

                  <!-- Car Info -->
                  <div class="flex-grow-1">
                     <div class="fw-bold">HATCHBACK (AC)</div>
                     <div class="text-muted small mb-2">Swift, WagonR or Similar</div>
                     <div class="fw-bold text-dark">₹ 1000 <span class="text-muted text-decoration-line-through">₹ 1737</span></div>
                  </div>
               </div>
            </a>
            <!-- Bus Item 1 -->
            <a href="car-details.php" class="bus-item">
               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <!-- Car Image and Discount -->
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="https://easemytaxi.com/media/uploads/vehicles/1749880228.webp" class="img-fluid" alt="Hatchback" style="width: 100%;">
                     <div class="discount-badge">10% Discount</div>
                  </div>

                  <!-- Car Info -->
                  <div class="flex-grow-1">
                     <div class="fw-bold">Ertiga Maruti</div>
                     <div class="text-muted small mb-2">Swift, WagonR or Similar</div>
                     <div class="fw-bold text-dark">₹ 1203 <span class="text-muted text-decoration-line-through">₹ 2227</span></div>
                  </div>
               </div>
            </a>
         </div>


      </div>
      



     <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>
function selectPriceTab(tabId) {
   // Hide both sections
   document.getElementById('bestprice').style.display = 'none';
   document.getElementById('tolltaxes').style.display = 'none';

   // Remove active styling from both buttons
   document.getElementById('btn-bestprice').classList.remove('btn-warning');
   document.getElementById('btn-bestprice').classList.add('btn-outline-warning');

   document.getElementById('btn-tolltaxes').classList.remove('btn-warning');
   document.getElementById('btn-tolltaxes').classList.add('btn-outline-warning');

   // Show selected section
   document.getElementById(tabId).style.display = 'block';

   // Activate selected button
   const btn = document.getElementById('btn-' + tabId);
   btn.classList.add('btn-warning');
   btn.classList.remove('btn-outline-warning');
}

// ✅ Make Best Price active on page load
window.onload = function () {
   selectPriceTab('bestprice');
};
</script>

