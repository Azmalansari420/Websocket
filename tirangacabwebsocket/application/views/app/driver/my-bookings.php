 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>
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

a.btn.rounded-3.fs-14.bg-primary-color.text-dark{
      color: black !important;
      font-size: 12px;

   }


.address-section {
      margin-top: 15px;
      font-size: 14px;
    }
    .address {
      display: flex;
      align-items: flex-start;
      gap: 8px;
      margin-bottom: 10px;
    }

   .dot {
      font-size: 16px;
          margin-right: 5px;
    }

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
               <span class="app-header-title">My Booking</span>
            </div>
         </div>         
      </div>
      <!-- Content Container -->
      <div class="p">
         <!-- Booking Progress -->
              
         <!-- Booking Conditions -->
         <div class="history-table-container">

            <style>
   .text-red{
      color: red;
   }
   .list-item {
       background-color: var(--surface);
       border-radius: 9px;
       margin-bottom: 15px;
       padding: 10px;
       box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
       transition: transform 0.2s;
       border: 1px solid;
   }

   .date-box{
      background: black;
       padding: 4px 5px;
       border-radius: 5px;
   }
</style>

<?php 
              
                  $this->db->order_by('id desc'); 
                  $booking_notifications = $this->db
                   ->order_by('id', 'desc')
                   ->get_where('booking_notifications', [
                       'driver_id' => $full_detail->id,
                       'status'    => 3 
                   ])
                   ->result_object();
                   if(!empty($booking_notifications))
                   {
                  foreach($booking_notifications as $data) 
                  { 
                      $bookings = $this->db->get_where('bookings', array('id' => $data->booking_id))->result_object(); 
                      if(!empty($bookings))
                      {
                        $bookings = $bookings[0];
                      }

                      $userdata = get_userdata(@$bookings->user_id);
                      ?>

               
               <div class="list-item mb-2">
                 <div class="d-flex justify-content-center align-items-start mb-2">
                    <div>
                       <div class="d-flex align-items-center date-box">
                          <span class="fw-semibold text-white"><?=date_time_formet(@$bookings->created_at) ?> [<?php if($bookings->trip_type==1){echo "Local";}else if($bookings->trip_type){echo "OutStaion";} ?>]</span>
                       </div>
                    </div>
                 </div>
                 <div class="address-section">
                   <div class="address">
                     <div class="dot">🟢</div>
                     <div><?=@$bookings->from_location ?></div>
                   </div>
                   <div class="address">
                     <div class="dot">🔴</div>
                     <div><?=@$bookings->to_location ?></div>
                   </div>
                 </div>
                 <div class="d-flex justify-content-between align-items-center">
                    <div>
                       <div class="fw-semibold">Client Name:- <?=@$userdata[0]->name ?></div>
                       <div class="fw-semibold">Client Mobile:- <?=@$userdata[0]->mobile ?></div>
                       <div class="small"><strong>Amount:- <?=currency_simble(@$bookings->amount) ?></strong></div>
                    </div>
                    <a href="booking-details.php?id=<?=$data->id ?>" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                     View Booking
                    </a>


                 </div>                  
               </div>

             <?php }  } else { ?>
                <div class="list-item mb-2">
                 <div class="d-flex justify-content-center align-items-start mb-2">
                    <div>
                       <div class="d-flex align-items-center">
                          <p style='color:red'>🚫 You have No Complete bookings Available.</p>
                       </div>
                    </div>
                 </div>
               </div>

            <?php } ?>           

            
         </div>

         <!-- Promo Code -->
         
      </div>


            
    <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

