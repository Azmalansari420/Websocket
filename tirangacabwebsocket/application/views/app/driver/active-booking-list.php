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
$driver_id = $this->session->userdata("user")['id'];
              $is_online = $this->db
                  ->where('driver_id', $driver_id)
                  ->where('status', 1)
                  ->get('driver_car_history')
                  ->row();

              if ($is_online) 
              {
                  $this->db->order_by('id desc'); 
                  $booking_notifications = $this->db
                   ->order_by('id', 'desc')
                   ->get_where('booking_notifications', [
                       'driver_id' => $driver_id,
                       'status'    => 1 
                   ])
                   ->result_object();

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
                          <span class="fw-semibold text-white"><?=date_time_formet(@$bookings->created_at) ?> </span>
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
                    <a data-id="<?=@$data->booking_id ?>" 
                        data-client-name="<?=@$userdata[0]->name ?>" 
                        data-client-mobile="<?=@$userdata[0]->mobile ?>" 
                        href="javascript:void(0);" 
                        class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark CompleteBookingBtn" 
                        data-bs-toggle="modal" 
                        data-bs-target="#CompleteModal">
                        Complete Booking
                     </a>


                 </div>                  
               </div>

             <?php }  } else { ?>
                <div class="list-item mb-2">
                 <div class="d-flex justify-content-center align-items-start mb-2">
                    <div>
                       <div class="d-flex align-items-center">
                          <p style='color:red'>🚫 You have No Active bookings Available.</p>
                       </div>
                    </div>
                 </div>
               </div>

            <?php } ?>