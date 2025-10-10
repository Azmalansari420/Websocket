 <?php 
$id = $this->input->get('id');
$request_id = $this->input->get('request_id');

$getcardata = $this->db->get_where('car_type_master',array('id'=>$id))->result_object();
if(!empty($getcardata))
{
  $getcardata = $getcardata[0];
}


$bookings = $this->db->get_where('bookings',array('request_id'=>$request_id))->result_object();
if(!empty($bookings))
{
   $bookings = $bookings[0];
}

$amount = calculate_fare($bookings->total_distance_meter,$getcardata->per_km_charge);

include('include/header.php');
include('include/sidebar.php');
?>
<style>
  body {
      padding-bottom: 0;
   }
     .small.text-muted {
      color: black !important;
      font-size: 16px;
    }

  .sidediv
  {
     font-size: 18px;
      color: black;
  }

  .coupon-box {
      max-width: 100%;
      margin: 0 auto;
      background: #fff;
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 10px 20px;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
  }

    .coupon-box h3 {
      margin-bottom: 15px;
      font-size: 20px;
      color: #333;
    }

    .coupon-input-wrapper {
      display: flex;
      gap: 10px;
    }

    .coupon-input-wrapper input[type="text"] {
      flex: 1;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }

    .coupon-input-wrapper button {
      background-color: #28a745;
      border: none;
      color: white;
      padding: 10px 16px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      transition: background 0.3s;
    }

    .coupon-input-wrapper button:hover {
      background-color: #218838;
    }



    .booking-container {
      padding: 18px 5px;
      background: #fff;
      font-family: Arial, sans-serif;
      color: #000;
    }

    .title {
      text-align: center;
      font-size: 20px;
      text-decoration: underline;
      margin-bottom: 10px;
    }

    .subtitle {
      text-align: center;
      font-size: 18px;
      text-decoration: underline;
      margin-bottom: 20px;
    }

    .addon-option {
      display: flex;
      align-items: flex-start;
      margin-bottom: 15px;
    }

    .addon-option input[type="checkbox"] {
      margin-right: 10px;
      transform: scale(1.3);
      margin-top: 3px;
    }

    .addon-option label {
      font-size: 16px;
    }

    .terms {
      font-size: 14px;
      color: #444;
      margin-top: 15px;
    }

    .terms a {
      color: #3b47e0;
      text-decoration: underline;
    }

    .payment-section {
        margin-top: 0px;
        background: #0057B7;
        padding: 20px;
        color: #fff;
        border-radius: 10px;
        margin-bottom: 44px;
    }

    .payment-section h3 {
      text-align: center;
      margin-bottom: 20px;
    }

    .pickup-label {
      color: #ffc107;
      font-size: 14px;
      display: block;
      margin-bottom: 5px;
    }

    .pickup-input {
      width: 100%;
      padding: 12px;
      font-size: 15px;
      border: none;
      border-radius: 5px;
      margin-bottom: 20px;
    }

    .paytm-btn {
      background-color: #00baf2;
      color: white;
      border: none;
      padding: 14px;
      width: 100%;
      font-size: 18px;
      font-weight: bold;
      border-radius: 25px;
      cursor: pointer;
      transition: background 0.3s;
    }

    .paytm-btn:hover {
      background-color: #e0a800;
    }
    .bus-header {
        height: 100%;
        overflow: hidden;
        border-radius: 9px;
    }
    
    .list-item {
      margin-bottom: 0;
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
               <span class="app-header-title"> <?=$getcardata->name ?></span>
            </div>
         </div>
         
      </div>
      <!-- Content Container -->
      <div class="p-3">
         <!-- Bus Image with Back and Share Button -->
         <div class="bus-header position-relative">
            <img src="<?=base_url('media/uploads/car_type_master/'.$getcardata->image) ?>" alt="<?=$getcardata->name ?>" class="img-fluid w-100 rounded-3">
         </div>
         <!-- Bus Details -->
         <div class="bus-details mt-3">
            <div class="d-flex justify-content-center align-items-start mb-3">
               <div>
                  <h5 class="fw-bold mb-1 text-center"> <?=currency_simble($amount) ?></h5>
               </div>
            </div>
            <!-- Journey Details -->

            <div class="list-item">
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Total KM</div>
                  <div class="sidediv"><?=$bookings->total_distance ?></div>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Per KM</div>
                  <div class="sidediv"><?=currency_simble($getcardata->per_km_charge) ?></div>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Driver Charges</div>
                  <div class="sidediv">included</div>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Fuel Charges</div>
                  <div class="sidediv">included</div>
               </div>
               <div class="d-flex justify-content-between">
                  <div class="small text-muted">Night Charges</div>
                  <div class="sidediv">included</div>
               </div>
            </div>
            


            <!-- Reviews -->
            <!-- <div class="mb-0">
               <div class="reviews">
                  <div class="coupon-box">
                   <h3>Have a coupon?</h3>
                   <div class="coupon-input-wrapper">
                     <input type="text" placeholder="Enter coupon code" id="couponCode">
                     <button onclick="applyCoupon()">Apply</button>
                   </div>
                   <div id="couponMsg" style="margin-top:10px; color:green; display:none;">Coupon Applied!</div>
                 </div>
               </div>
            </div> -->


            <div class="booking-container">
         
              <div class="payment-section">
                <?php
                if($bookings->trip_type==2)
                { ?>
                  <h3>Pay ₹ <span id="total-amount"><?=calculate_percentage($amount) ?></span> advance and Book</h3>
                  <button class="paytm-btn">Pay & Confirm ➔</button>
                <?php } ?>
                
                <button class="paytm-btn confirm-booking-btn"> Confirm Booking ➔</button>
              </div>
            </div>

         </div>
      </div>

  
       
     


<?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>
  
const car_type_master = "<?=$getcardata->id ?>";
const amount = "<?=$amount ?>";
const request_id = "<?=$request_id ?>";

  $(document).on("click", ".confirm-booking-btn",(function(e) {
      confirm_booking();
    }));

    function confirm_booking()
    {

        var form = new FormData();
        form.append("car_type_master", car_type_master);
        form.append("amount", amount);
        form.append("request_id", request_id);

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
            if (response.status == 200) 
            {
              toaster(response.message, 'success');
              window.location.href = response.url;
            }
            else 
            {
               toaster(response.message, 'error');
            }
         });
    }


</script>
