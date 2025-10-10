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
               <i class="bi bi-terminal-dash me-2 app-header-icon"></i>
               <span class="app-header-title">Privacy Policy</span>
            </div>
         </div>
         
      </div>
      <!-- Content Container -->
      <div class="p-3">
        
         <!-- Bus Details -->
         <div class="bus-details mt-3">
          
           
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <h6 class="fw-bold mb-2">Privacy Policy</h6>
               <div class="cancellation-policy">
                  <div class="d-flex align-items-center mb-2">
                     <div class="cancellation-dot bg-success me-2"></div>
                     <div class="text-muted small">Free cancellation until 24 hours before departure</div>
                  </div>
                  <div class="d-flex align-items-center mb-2">
                     <div class="cancellation-dot bg-warning me-2"></div>
                     <div class="text-muted small">50% refund between 24 and 12 hours before departure</div>
                  </div>
                  <div class="d-flex align-items-center">
                     <div class="cancellation-dot bg-danger me-2"></div>
                     <div class="text-muted small">No refund within 12 hours of departure</div>
                  </div>
               </div>
            </div>
            <!-- Reviews -->
            
         </div>
      </div>

     <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>
