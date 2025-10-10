<?php
$page_name = basename(current_url());
?>
<div class="bottom-nav">
         <a href="home.php" class="nav-item <?php if($page_name=='home.php') echo 'active'; ?>">
         <i class="bi bi-house-door-fill"></i>
         <span>Home</span>
         </a>
         <!-- <a href="search.html" class="nav-item">
         <i class="bi bi-search"></i>
         <span>Search</span>
         </a> -->
         <a href="my-bookings.php" class="nav-item <?php if($page_name=='my-bookings.php') echo 'active'; ?>">
         <i class="bi bi-ticket-detailed-fill"></i>
         <span>My Bookings</span>
         </a>
         <a href="wallet.php" class="nav-item <?php if($page_name=='wallet.php') echo 'active'; ?>">
         <i class="bi bi-wallet-fill"></i>
         <span>Wallet</span>
         </a>
         <a href="edit-profile.php" class="nav-item <?php if($page_name=='edit-profile.php') echo 'active'; ?>">
         <i class="bi bi-person-fill"></i>
         <span>Profile</span>
         </a>
      </div>