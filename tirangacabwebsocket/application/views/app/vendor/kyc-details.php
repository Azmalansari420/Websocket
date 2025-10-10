 <?php 
include('include/header.php');
include('include/sidebar.php');
?>      <!-- Overlay -->
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-receipt me-2 app-header-icon"></i>
               <span class="app-header-title">KYC Details</span>
            </div>
         </div>
         
      </div>
      <!-- Content Container -->
      <div class="p-3">
        
         <!-- Bus Details -->
         <div class="bus-details mt-3">           
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <h6 class="fw-bold mb-2">Enter Your Account Details</h6>
               <div class="auth-form">
                  <div class="mb-3">
                     <div class="input-group">
                        <input type="tel" class="form-control border-start-0" id="accountno" placeholder="Enter Your Account Number" >
                     </div>
                  </div>
                  <div class="mb-3">
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="accountholder" placeholder="Enter Account Holder Name" >
                     </div>
                  </div>
                  <div class="mb-3">
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="ifsc" placeholder="Enter IFSC Code" >
                     </div>
                  </div>
               </div>
            </div>      
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <h6 class="fw-bold mb-2">Please Enter Google Pay Details</h6>
               <div class="auth-form">
                  <div class="mb-3">
                     <div class="input-group">
                        <input type="tel" class="form-control border-start-0" id="accountno" placeholder="Enter Your Google Pay no" >
                     </div>
                  </div>
               </div>
            </div> 
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <h6 class="fw-bold mb-2">Please Enter PhonePay Details</h6>
               <div class="auth-form">
                  <div class="mb-3">
                     <div class="input-group">
                        <input type="tel" class="form-control border-start-0" id="accountno" placeholder="Enter Your PhonePay no" >
                     </div>
                  </div>
               </div>
            </div> 
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <h6 class="fw-bold mb-2">Please Enter PayTm Details</h6>
               <div class="auth-form">
                  <div class="mb-3">
                     <div class="input-group">
                        <input type="tel" class="form-control border-start-0" id="accountno" placeholder="Enter Your PayTm no" >
                     </div>
                  </div>
               </div>
            </div>

                                           

                  <div class="d-grid gap-2 mb-4">
                     <a href="javascript:void(0);" class="btn-app pulse-animation p-2 fw-bold btn login-btn text-white">Submit</a>
                  </div>
                  <!-- Social Sign In -->

                  



            <!-- Reviews -->
            
         </div>
      </div>

       <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>
