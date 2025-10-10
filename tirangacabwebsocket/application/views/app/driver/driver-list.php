 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>



</style>
      <!-- Overlay -->
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title">Driver List</span>
            </div>

         </div>         
            <a href="driver-add.php" class="btn btn-sm text-white bg-black">Add New</a>
      </div>
      <!-- Content Container -->
      <div class="bus-list" id="bestprice" >
            <!-- Bus Item 1 -->
            <a href="driver-update.php" class="bus-item">
               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <!-- Car Image and Discount -->
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="<?=base_url() ?>media/uploads/users/175067975440user_profile.png" class="img-fluid" alt="Hatchback" style="width: 100%;">
                  </div>
                  <div class="flex-grow-1">
                     <div class="fw-bold">Vinod Kumar</div>
                     <div class="text-muted small mb-2">vinod@gmail.com</div>
                     <div class="fw-bold text-dark">789456130</div>
                  </div>
               </div>
            </a>
            <!-- Bus Item 1 -->
            <a href="driver-update.php" class="bus-item">
               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <!-- Car Image and Discount -->
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="<?=base_url() ?>media/uploads/users/175127458837user_profile.png" class="img-fluid" alt="Hatchback" style="width: 100%;">
                  </div>
                  <div class="flex-grow-1">
                     <div class="fw-bold">Ravi</div>
                     <div class="text-muted small mb-2">ravikumar@gmail.com</div>
                     <div class="fw-bold text-dark">987654310</div>
                  </div>
               </div>
            </a>
            
            
         </div>


            
    <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>
