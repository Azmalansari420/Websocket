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
            <div class="d-flex align-items-center">
               <i class="bi bi-gift me-2 app-header-icon"></i>
               <span class="app-header-title">Offers & Rewards</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
           
            <!-- Available Offers -->
            <h6 class="section-header">Available Offers</h6>
            <div class="reward-card">
               <div class="d-flex">
                  <div class="reward-icon primary">
                     <i class="bi bi-ticket-perforated icon-lg"></i>
                  </div>
                  <div class="reward-content">
                     <div class="reward-title">Weekend Special</div>
                     <div class="reward-description">20% off on all weekend trips</div>
                     <div class="reward-expiry">
                        <i class="bi bi-clock-history"></i>Valid until Apr 30
                     </div>
                  </div>
               </div>
            </div>
            <div class="reward-card">
               <div class="d-flex">
                  <div class="reward-icon secondary">
                     <i class="bi bi-gift icon-lg"></i>
                  </div>
                  <div class="reward-content">
                     <div class="reward-title">First Trip Discount</div>
                     <div class="reward-description">$10 off on your first booking</div>
                     <div class="reward-expiry">
                        <i class="bi bi-person-plus"></i>New users only
                     </div>
                  </div>
               </div>
            </div>
            <div class="reward-card">
               <div class="d-flex">
                  <div class="reward-icon accent">
                     <i class="bi bi-cash-coin icon-lg"></i>
                  </div>
                  <div class="reward-content">
                     <div class="reward-title">Refer a Friend</div>
                     <div class="reward-description">Get $15 when a friend books their first trip</div>
                     <div class="reward-expiry">
                        <i class="bi bi-infinity"></i>No expiration
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