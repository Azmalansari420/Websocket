 <?php 
include('include/header.php');
include('include/sidebar.php');
?>      <!-- Overlay -->

<style>
    .form-label {
       font-size: 15px;
       font-weight: 500;
       margin-bottom: 8px;
    }

    input.form-control {
   border-radius: 5px;
   padding: 10px;
   font-size: 16px;
}
</style>
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title">Update Car</span>
            </div>
         </div>
         
      </div>
      <!-- Content Container -->
      <div class="p-3">
        
         <!-- Bus Details -->
         <div class="bus-details mt-3">           
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <div class="auth-form">

                  <div class="mb-3">
                     <label for="phone" class="form-label">Select Car Brand</label>
                     <div class="input-group">
                        <select class="form-select" >
                           <option>TATA</option>
                           <option>MAHINDRA</option>
                           <option>BOLERO</option>
                           <option>Hyundai</option>
                        </select>
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="phone" class="form-label">Select Car Model</label>
                     <div class="input-group">
                        <select class="form-select" >
                           <option>XUV 500</option>
                           <option>Innova Crysta</option>
                           <option>Innova</option>
                           <option>Mobilio</option>
                        </select>
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="name" class="form-label">Enter Car Number</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="name" placeholder="Enter Car Number">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="name" class="form-label">Enter Car Price (Per/KM)</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="name" placeholder="Enter Car Price">
                     </div>
                  </div>

                 
               </div>
            </div>      
                       

                                           

            <div class="d-grid gap-2 mb-4">
               <a href="car-list.php" class="btn-app pulse-animation p-2 fw-bold btn login-btn text-white">Submit</a>
            </div>

            
         </div>
      </div>

       <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>
