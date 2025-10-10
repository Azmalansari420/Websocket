<?php
$page_name = basename(current_url());
?>
<style>
   .sidebar-menu {
       padding: 0 0;
   }
</style>

<div class="sidebar" id="sidebar">
         <div class="sidebar-header">
            <div class="d-flex align-items-center 1mb-3">
               <div class="user-avatar me-3">
                  <i class="bi bi-person"></i>
               </div>
               <div>
                  <h6 class="mb-1"><?=$full_detail->name ?></h6>
                  <p class="mb-0 small"><?=$full_detail->mobile ?></p>
               </div>
            </div>
         </div>
         <div class="sidebar-menu">
            <a href="home.php" class="sidebar-menu-item <?php if($page_name=='home.php') echo 'active'; ?>">
            <i class="bi bi-house-door"></i>
            <span>Home</span>
            </a>

            <!-- userpanel -->

            

            <!-- <a href="wallet.php" class="sidebar-menu-item <?php if($page_name=='wallet.php') echo 'active'; ?>">
            <i class="bi bi-wallet"></i>
            <span>Wallet</span>
            </a> -->
<!-- 
            <a href="kyc-details.php" class="sidebar-menu-item <?php if($page_name=='kyc-details.php') echo 'active'; ?>">
            <i class="bi bi-wallet"></i>
            <span>KYC</span>
            </a> -->


            <a href="booking-filter.php" class="sidebar-menu-item <?php if($page_name=='booking-filter.php') echo 'active'; ?>">
            <i class="bi bi-wallet"></i>
            <span>My Bookings</span>
            </a>

            <a href="driver-car-history.php" class="sidebar-menu-item <?php if($page_name=='driver-car-history.php') echo 'active'; ?>">
            <i class="bi bi-wallet"></i>
            <span>Car Assign History</span>
            </a>

            
          <!--   <a href="refund-policy.php" class="sidebar-menu-item <?php if($page_name=='refund-policy.php') echo 'active'; ?>">
            <i class="bi bi-receipt"></i>
            <span>Refund Policy</span>
            </a> -->

            <a href="term-condition.php" class="sidebar-menu-item <?php if($page_name=='term-condition.php') echo 'active'; ?>">
            <i class="bi bi-pass"></i>
            <span>Term & Condition</span>
            </a>
            
            <a href="help-support.php" class="sidebar-menu-item <?php if($page_name=='help-support.php') echo 'active'; ?>">
            <i class="bi bi-headset"></i>
            <span>Help & Support</span>
            </a>

           
            
         </div>
         <div class="p-3 text-center">
            <a href="<?=base_url('api/auth/logout'.'/vendor') ?>" class="btn btn-outline-danger w-100 rounded-3">
            <i class="bi bi-box-arrow-right me-2"></i> Sign Out
            </a>
         </div>
      </div>