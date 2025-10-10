 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>
   a.btn.rounded-3.fs-14.bg-primary-color.text-white{
      color: black !important;

   }

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

      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-ticket-perforated me-2 app-header-icon"></i>
               <span class="app-header-title">My Bookings</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
            

            <?php
            $this->db->order_by('id', 'desc');
            $this->db->where_in('status', [1, 2, 3, 4]);
            $bookings = $this->db
                ->get_where('bookings', ['user_id' => $full_detail->id])
                ->result_object();
            foreach($bookings as $data)
               { ?>

            <div class="list-item">
               <span class="status-badge confirmed"><?=car_booking_status($data->status) ?></span>
               <div class="d-flex justify-content-between align-items-start mb-2">
                  <div>
                     <div class="d-flex align-items-center">
                        <span class="fw-semibold text-primary-color"><?=$data->from_location ?></span>
                        <i class="bi bi-arrow-right mx-2 text-secondary-color"></i>
                        <span class="fw-semibold text-primary-color"><?=$data->to_location ?></span>
                     </div>
                  </div>
               </div>
               <div class="d-flex justify-content-between mb-3">
                  <div class="d-flex align-items-center">
                     <i class="bi bi-calendar3 me-2 text-secondary-color fs-14"></i>
                     <span class="text-muted"><?=date_time_formet($data->created_at) ?></span>
                  </div>
                  <div class="d-flex align-items-center">
                     <i class="bi bi-record-circle-fill me-2 text-secondary-color fs-14"></i>
                     <span class="text-muted"><?=currency_simble($data->amount) ?></span>
                  </div>
               </div>
               <div class="d-flex justify-content-between align-items-center">
                  <div>
                     <div class="fw-semibold">Booking #<?=$data->request_id ?></div>
                     <!-- <div class="small text-muted"><?=car_type_master($data->car_type_master) ?></div> -->
                  </div>
                  <a href="my-ticket.php?id=<?=$data->id ?>" class="btn rounded-3 fs-14 bg-primary-color text-white" style="padding: 0px 6px;">
                  View Ticket
                  </a>
               </div>
            </div>
         <?php } ?>
            
            
         </div>
      </div>
        
     <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>
