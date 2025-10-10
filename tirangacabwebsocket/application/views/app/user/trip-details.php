 <?php 
 $request_id = $this->input->get('request_id');
$bookings = $this->db->get_where('bookings',array('request_id'=>$request_id))->result_object();
if(!empty($bookings))
{
   $bookings = $bookings[0];
}
include('include/header.php');
include('include/sidebar.php');
?> 
<style>
   .text-muted {
    color: black!important;
}

.bus-card {
   border: 1px solid #f0f0f0;
   border-radius: 10px;
   background: #fff;
   transition: 0.3s ease;
}
.bus-card:hover {
   box-shadow: 0 2px 8px rgba(0,0,0,0.1);
   transform: scale(1.01);
}
.bus-item {
    margin-bottom: 8px;
}
.discount-badge {
    position: absolute;
    top: -12px;
    left: 0;
    background-color: #ff9800;
    color: white;
    font-size: 10px;
    font-weight: 500;
    padding: 2px 6px;
    border-radius: 4px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
    z-index: 2;
    width: 100%;
    text-align: center;
}
.active-tab {
    background: red;
    color: white;
}

.btn-bestprice {
    font-size: 12px;
}

</style>
     
      <!-- Overlay -->
      <!-- Overlay -->
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            
         </div>
         <div>
            <div class="d-flex align-items-center">
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title">Trip Details</span>
            </div>
         </div>
      </div>
      <!-- Content Container -->
      <div class="p-3">
         <?php
         if(!empty($bookings))
            { ?>
         <div class="journey-summary bg-primary-light p-3 rounded-3 mb-3">
            <div class="mb-2">
               <?php
               if($bookings->trip_type==1)
                  { ?>
               <button class="btn btn-app text-white">Trip Details</button>
               <!-- <button class="btn btn-app text-white">Local Trip</button> -->
            <?php } else if($bookings->trip_type==2)
            { ?>
               <button class="btn btn-app text-white">Outstation <?php if($bookings->sub_trip==1){echo 'One Way';}else{ echo "Round";} ?> Trip</button>
            <?php } ?>
            </div>

            <div class="d-flex justify-content-between">
               <div>
                  <div class="text-muted small"><strong style="color:red;font-weight: 600;font-size: 15px;">From</strong></div>
                  <div class="fw-bold"><?=$bookings->from_location ?> </div>

                  <div class="text-muted small"><strong style="color:red;font-weight: 600;font-size: 15px;">To</strong></div>
                  <div class="fw-bold"><?=$bookings->to_location ?> </div>
                  <?php
                  if($bookings->trip_type==2)
                     { ?>
                  <div class="mt-2">
                     <div class="text-muted small" style="color:red!important;font-weight: 600;font-size: 15px;">Pickup Date/Time</div>
                     <div class="fw-bold"><?=date('d M, Y h:i A',strtotime($bookings->pickup_date_time)) ?></div>
                  </div>
               <?php } ?>

                  <?php
                  if($bookings->trip_type==2 && $bookings->sub_trip==2)
                     { ?>

                  <div class="mt-2">
                     <div class="text-muted small" style="color:red!important;font-weight: 600;font-size: 15px;">Return Date/Time</div>
                     <div class="fw-bold"><?=date('d M, Y h:i A',strtotime($bookings->return_date_time)) ?></div>
                  </div>
               <?php } ?>
               </div>               
            </div>



         </div>

         <div class="bus-list" >
            
            <?php
            $getcar = $this->db->get_where('car_type_master',array('status'=>1))->result_object();
            foreach($getcar as $data)
               {

                  $amount = calculate_fare($bookings->total_distance_meter,$data->per_km_charge);

                  ?>

            <a href="javascript:void(0);" class="my-btn bus-item confirm-booking-btn" data-car_type_master="<?=$data->id ?>" data-amount="<?=$amount ?>">

               <div class="bus-card d-flex align-items-center p-2 rounded-3 shadow-sm" style="background: #fff;">
                  <div class="position-relative me-3" style="width: 100px;">
                     <img src="<?=base_url('media/uploads/car_type_master/'.$data->image) ?>" class="img-fluid" alt="<?=$data->name ?>" style="width: 100%;">
                  </div>

                  <div class="flex-grow-1">
                     <div class="fw-bold"><?=$data->name ?></div>
                     <div class="text-muted small m5b-2"><?=$data->description ?></div>
                     <div class="fw-bold text-dark">₹ <?=($amount) ?> </div>
                  </div>
               </div>
            </a>
         <?php } ?>
            


         </div>
      <?php } else {?>
         <div class="journey-summary bg-primary-light p-3 rounded-3 mb-3">
            <div class="mb-2">
               <button class="btn btn-app text-white">SOMTHING WRONG!</button>
            </div>
         </div>
      <?php } ?>
         </div>


      </div>
      



     <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>

   const request_id = "<?=$request_id ?>";
   const trip_type = "<?=$bookings->trip_type ?>";
   let car_type_master = 0;
   let amount = 0;

    $(document).on("click", ".confirm-booking-btn",(function(e) {
      car_type_master = $(this).data('car_type_master');
      amount = $(this).data('amount');
      login_distibuter();
    }));

    function login_distibuter()
    {
        var form = new FormData();
        form.append("car_type_master", car_type_master);
         form.append("amount", amount);
         form.append("request_id", request_id);
         form.append("trip_type", trip_type);

        var settings = {
          "url": "<?=base_url() ?>api/booking/confirm_booking",
          "method": "POST",
          "dataType": "json",
          "timeout": 0,
          "processData": false,
          "mimeType": "multipart/form-data",
          "contentType": false,
          "data": form
        };

        $.ajax(settings).done(function (response) 
        {
            console.log(response);
            if (response.status == 200) {
               toaster(response.message, 'success');
               setTimeout(function () {
                  window.location.href = response.url;
               }, 1000);
            }else 
            {
               toaster(response.message, 'error');
            }
         });
    }

</script>


