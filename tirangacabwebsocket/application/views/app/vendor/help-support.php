 <?php 
include('include/header.php');
include('include/sidebar.php');
?>

      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-question-circle me-2 app-header-icon"></i>
               <span class="app-header-title">Help & Support</span>
            </div>
         </div>
        
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
            
            
            <!-- Contact Support -->
            <h6 class="section-header">Contact Support</h6>
            <div class="card feature-card mb-4">
               <div class="card-body">
                  <div class="row g-3">
                     <div class="col-6">
                        <div class="d-flex flex-column align-items-center">
                           <div class="feature-icon-container primary mb-2">
                              <i class="bi bi-chat-dots feature-icon"></i>
                           </div>
                           <h6 class="feature-title">Live Chat</h6>
                           <small class="text-muted">Available 24/7</small>
                        </div>
                     </div>
                     <div class="col-6">
                        <div class="d-flex flex-column align-items-center">
                           <div class="feature-icon-container secondary mb-2">
                              <i class="bi bi-envelope feature-icon"></i>
                           </div>
                           <h6 class="feature-title">Email Support</h6>
                           <small class="text-muted">Response in 24h</small>
                        </div>
                     </div>
                     <div class="col-6">
                        <div class="d-flex flex-column align-items-center">
                           <div class="feature-icon-container accent mb-2">
                              <i class="bi bi-telephone feature-icon"></i>
                           </div>
                           <h6 class="feature-title">Call Us</h6>
                           <small class="text-muted">9AM - 6PM EST</small>
                        </div>
                     </div>
                     <div class="col-6">
                        <div class="d-flex flex-column align-items-center">
                           <div class="feature-icon-container warning mb-2">
                              <i class="bi bi-twitter feature-icon"></i>
                           </div>
                           <h6 class="feature-title">Social Media</h6>
                           <small class="text-muted">@triangacab</small>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
       
      <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>
