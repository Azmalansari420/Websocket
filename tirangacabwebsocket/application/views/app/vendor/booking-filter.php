 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>
   a.btn.rounded-3.fs-14.bg-primary-color.text-white{
      color: black !important;
      font-size: 12px;

   }

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
               <i class="bi bi-ticket-perforated me-2 app-header-icon"></i>
               <span class="app-header-title">Bookings Filter</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">



            <div class="mb-3">
               <div class="auth-form">

                  <div class="mb-3">
                     <label for="phone" class="form-label">Select Car</label>
                     <div class="input-group">
                        <select class="form-select" >
                           <option>DL152323</option>
                           <option>MHD41231</option>
                           <option>DL1D1234</option>
                           <option>CH4S1234</option>
                        </select>
                     </div>
                  </div>

                  <div class="d-flex justify-content-between">
                     <div class="mb-3">
                        <label for="name" class="form-label">From Date</label>
                        <div class="input-group">
                           <input type="date" class="form-control border-start-0" id="name">
                        </div>
                     </div>
                     <div class="mb-3">
                        <label for="name" class="form-label">To Date</label>
                        <div class="input-group">
                           <input type="date" class="form-control border-start-0" id="name">
                        </div>
                     </div>
                  </div>

                  <div class="d-grid gap-2 mb-4">
                     <a href="car-list.php" class="btn-app pulse-animation p-2 fw-bold btn login-btn text-white">Submit</a>
                  </div>

               </div>
            </div>



            <!-- Upcoming Trips -->
            <div class="list-item">
               <div class="d-flex justify-content-between align-items-center">
                  <div>
                     <div class="fw-semibold">DL15CD5210</div>
                     <div class="small text-muted">Amit Kumar</div>
                  </div>
                  <a href="view-booking.php" class="btn rounded-3 fs-14 bg-primary-color text-white">
                  View Bookings
                  </a>
               </div>
            </div>
            <div class="list-item">
               <div class="d-flex justify-content-between align-items-center">
                  <div>
                     <div class="fw-semibold">DL15CD5210</div>
                     <div class="small text-muted">Amit Kumar</div>
                  </div>
                  <a href="view-booking.php" class="btn rounded-3 fs-14 bg-primary-color text-white">
                  View Bookings
                  </a>
               </div>
            </div>
            <div class="list-item">
               <div class="d-flex justify-content-between align-items-center">
                  <div>
                     <div class="fw-semibold">DL15CD5210</div>
                     <div class="small text-muted">Amit Kumar</div>
                  </div>
                  <a href="view-booking.php" class="btn rounded-3 fs-14 bg-primary-color text-white">
                  View Bookings
                  </a>
               </div>
            </div>
            
            
            
         </div>
      </div>
        
      <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

