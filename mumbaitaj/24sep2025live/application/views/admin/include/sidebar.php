<?php
$currentURL = current_url();
$sitesetting = $this->crud->fetchdatabyid('1','site_setting');
?>
<sidebar id="sidebar" class="app-sidebar">
   <div data-scrollbar="true" data-height="100%">
      <ul class="nav">
         <li class="nav-profile">
            <div class="profile-img11">
               <img src="<?php echo base_url(); ?>media/uploads/site_setting/<?php echo $sitesetting[0]->logo; ?>" alt="<?=website_name ?>" style="width: 100%;">
            </div>
           
         </li>
         
         
         <li class="nav-divider"></li>
         <li class="nav-header">Admin Panel</li>

         <li class="<?php if($currentURL==base_url('admin/dashboard')) echo 'active'; ?>">
            <a href="<?php echo base_url('admin/dashboard'); ?>">
            <span class="nav-icon"><i class="fa fa-cog bg-black text-white"></i></span>
            <span class="nav-text">Dashboard</span>
            </a>
         </li>

         <!-- <li class="<?php if($currentURL==base_url('admin_con/site_setting/edit/1')) echo 'active'; ?>">
            <a href="<?php echo base_url('admin_con/site_setting/edit/1'); ?>">
               <span class="nav-icon"><i class="fa fa-cog bg-black text-white"></i></span>
               <span class="nav-text">Site Setting</span>
            </a>
         </li>
 -->
         <li class="<?php if($currentURL==base_url('admin_con/all_times/listing')) echo 'active'; ?>">
            <a href="<?php echo base_url('admin_con/all_times/listing');?>">
               <span class="nav-icon"><i class="fa fa-cog bg-black text-white"></i></span>
               <span class="nav-text">All Time</span>
            </a>
         </li>
         
         <li class="<?php if($currentURL==base_url('admin_con/game/listing')) echo 'active'; ?>">
            <a href="<?php echo base_url('admin_con/game/listing');?>">
               <span class="nav-icon"><i class="fa fa-cog bg-black text-white"></i></span>
               <span class="nav-text">Game</span>
            </a>
         </li>
         
         <li class="<?php if($currentURL==base_url('admin_con/game_times/listing')) echo 'active'; ?>">
            <a href="<?php echo base_url('admin_con/game_times/listing');?>">
               <span class="nav-icon"><i class="fa fa-cog bg-black text-white"></i></span>
               <span class="nav-text">Game Times</span>
            </a>
         </li>
         
         <li class="<?php if($currentURL==base_url('admin_con/number/listing')) echo 'active'; ?>">
            <a href="<?php echo base_url('admin_con/number/listing');?>">
               <span class="nav-icon"><i class="fa fa-cog bg-black text-white"></i></span>
               <span class="nav-text">Number</span>
            </a>
         </li>
         
       
         <!-- <li class="has-sub">
            <a href="#">
            <span class="nav-icon"><i class="fa fa-cog bg-gradient-orange text-white"></i></span>
            <span class="nav-text">Forms</span>
            <span class="nav-caret"><b class="caret"></b></span>
            </a>
            <ul class="nav-submenu">
               <li class="active"><a href="add.php"><span class="nav-text">Add</span></a></li>
               <li><a href="list.php"><span class="nav-text">Table</span></a></li>
            </ul>
         </li> -->



         <!-- <li class="has-sub">
            <a href="#">
            <span class="nav-icon"><i class="fa fa-cog bg-gradient-orange text-white"></i></span>
            <span class="nav-text">Componey Profile</span>
            <span class="nav-caret"><b class="caret"></b></span>
            </a>
            <ul class="nav-submenu">
               <li class="<?php if($currentURL==base_url('admin_con/content/edit/1')) echo 'active'; ?>"><a href="<?php echo base_url('admin_con/content/edit/1'); ?>"><span class="nav-text">About Us</span></a>
               </li>
               <li class="<?php if($currentURL==base_url('admin_con/content/edit/2')) echo 'active'; ?>"><a href="<?php echo base_url('admin_con/content/edit/2'); ?>"><span class="nav-text">Privacy Policy</span></a>
               </li>
               <li class="<?php if($currentURL==base_url('admin_con/content/edit/3')) echo 'active'; ?>"><a href="<?php echo base_url('admin_con/content/edit/3'); ?>"><span class="nav-text">Terms & Conditions</span></a>
               </li>
            </ul>
         </li> -->

         
       
         <li class="nav-divider"></li>
         <li class="">
            <a href="<?php echo base_url('admin/logout');?>">
               <span class="nav-icon"><i class="fa fa-cog bg-gradient-purple text-white"></i></span>
               <span class="nav-text">Logout </span>
            </a>
         </li>
         <li class="nav-copyright">&copy; <?=date('Y'); ?> <?=website_name ?>.<br> All Right Reserved</li>
      </ul>
   </div>
</sidebar>