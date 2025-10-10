 <?php 
$request_id = $this->input->get('request_id');
$bookings = $this->db->get_where('bookings',array('request_id'=>$request_id))->result_object();
if(!empty($bookings))
{
   $bookings = $bookings[0];
}

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
               <i class="bi bi-bell me-2 app-header-icon"></i>
               <span class="app-header-title">Confirmation</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
            

            <!-- status = 1 pr ye dikhey -->
            <div id="searching-driver" class="success-message text-center <?php if($bookings->trip_type==1) echo 'margin-top'; else echo "mb-5"; ?>">
               <div class="success-icon mb-3">
                  <i class="bi bi-search"></i>
               </div>
               <h4 class="fw-bold mb-2">Searching Driver!</h4>
            </div>


            <!-- status = 2 pr ye dikhey(driver jb booking ko accept kr le ya assign ho jay) -->
            <div style="display:none;" id="booking-success" class="success-message text-center <?php if($bookings->trip_type==1) echo 'margin-top'; else echo "mb-5"; ?>" >
               <div class="success-icon mb-3">
                  <i class="bi bi-check-circle"></i>
               </div>
               <h4 class="fw-bold mb-2">Ride Confirmed !</h4>
            </div>
            <div class="driver-details" style="display:none;">
                <p id="verify-otp-sec"><strong>Verify OTP:</strong> <span id="start_ride_otp">---</span></p>
                <p><strong>Car Type:</strong> <span id="car_type_master">---</span></p>
                <p><strong>Car Number:</strong> <span id="car_number">---</span></p>
                <p><strong>Driver Name:</strong> <span id="driver_name">---</span></p>
                <p><strong>Driver Mobile:</strong> <span id="driver_mobile">---</span></p>
                <p><strong>Driver Image:</strong> 
                  <img id="driver_image" src="" width="100" height="100">
               </p>

               <p class="text-center">
                  <button id="cancel-btn"  class="btn btn-danger">Cancel Ride</button>
               </p>
            </div>



            <!-- status = 3 pr ye dikhey jb drivewr or user se OTP verify kr lega  -->
            <div style="display:none;" id="booking-start" class="success-message text-center <?php if($bookings->trip_type==1) echo 'margin-top'; else echo "mb-5"; ?>" >
               <div class="success-icon mb-3">
                  <i class="bi bi-check-circle"></i>
               </div>
               <h4 class="fw-bold mb-2">Ride Start!</h4>
            </div>

            <!-- status = 4 pr ye dikhey jb ride complete ho jayegi -->
            <div style="display:none;" id="complete-start" class="success-message text-center <?php if($bookings->trip_type==1) echo 'margin-top'; else echo "mb-5"; ?>">
               <div class="success-icon mb-3">
                  <i class="bi bi-check-circle"></i>
               </div>
               <h4 class="fw-bold mb-2">Ride Complete!</h4>
            </div>
            <!-- ride completer hotey he rating ka dikh jayega  -->
            <div style="display:none;" id="rating-section" class="rating-box text-center mt-4">
               <h5 class="fw-bold mb-3">Rate Your Ride</h5>

               <!-- Star Rating -->
               <div class="star-rating mb-3">
                  <i class="bi bi-star" data-value="1"></i>
                  <i class="bi bi-star" data-value="2"></i>
                  <i class="bi bi-star" data-value="3"></i>
                  <i class="bi bi-star" data-value="4"></i>
                  <i class="bi bi-star" data-value="5"></i>
               </div>

               <!-- Feedback -->
               <div class="mb-3">
                  <textarea id="ride-feedback" class="form-control" rows="3" placeholder="Write your feedback..."></textarea>
               </div>

               <button class="btn btn-primary w-100" id="submit-rating">Submit</button>
            </div>

            <!-- status = 5 pr ye dikhey jb driver cancel kr dega  -->
            <div style="display:none;" id="booking-cancel" class="success-message text-center <?php if($bookings->trip_type==1) echo 'margin-top'; else echo "mb-5"; ?>" >
               <div class="success-icon mb-3">
                  <i class="bi bi-check-circle"></i>
               </div>
               <h4 class="fw-bold mb-2">Ride Cancel By Driver!</h4>
            </div>



           




            <?php
            if($bookings->trip_type==2)
            { ?>
            <div class="booking-details mb-4">
               <div class="booking-card p-3 rounded-3 bg-primary-light mb-3">
                  <h6 class="fw-bold mb-3">Booking Information</h6>
                  <div class="d-flex justify-content-between mb-2">
                     <div class="text-muted">Booking ID</div>
                     <div class="fw-medium"><?=$request_id ?></div>
                  </div>
                  <div class="d-flex justify-content-between mb-2">
                     <div class="text-muted">Booking Create Date</div>
                     <div><?=date_time_formet($bookings->created_at) ?></div>
                  </div>
                  <div class="d-flex justify-content-between">
                     <div class="text-muted">Amount Paid</div>
                     <div class="fw-bold text-primary-color"><?=currency_simble($bookings->amount) ?></div>
                  </div>
                  <div class="d-flex justify-content-between">
                     <div class="text-muted">Total Distance</div>
                     <div class="fw-bold text-primary-color"><?=($bookings->total_distance) ?></div>
                  </div>
               </div>
               <div class="trip-card p-3 rounded-3 bg-primary-light">
                  <h6 class="fw-bold mb-3">Trip Details</h6>
                  <div class="d-flex align-items-center mb-3">
                     <div class="bus-icon me-3">
                        <i class="bi bi-car-front"></i>
                     </div>
                     <div>
                        <h6 class="fw-bold mb-0"><?=car_type_master($bookings->car_type_master) ?></h6>
                        <!-- <div class="text-muted small">Premium Sleeper</div> -->
                     </div>
                  </div>
                  <div class="journey-details mb-3">
                     <div class="d-flex mb-3">
                        <div class="journey-stops me-3">
                           <div class="departure-stop"></div>
                           <div class="journey-line"></div>
                           <div class="arrival-stop"></div>
                        </div>
                        <div class="journey-info flex-grow-1">
                           <div class="mb-3">
                              <div class="fw-bold"><?=($bookings->from_location) ?></div>
                            
                           </div>
                           <div>
                              <div class="fw-bold"><?=($bookings->to_location) ?></div>
                              <!-- <div class="text-muted small">Jun 15, 11:30 AM</div> -->
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="additional-info bg-white p-2 rounded-3 small">
                     <div class="mb-1"><i class="bi bi-info-circle me-1 text-primary-color"></i> Please arrive 10 minutes before departure</div>
                  </div>
               </div>
            </div>
         <?php } ?>
            
         </div>
      </div>
      





<!-- Cancel Ride Modal -->
<div class="modal fade" id="cancelRideModal" tabindex="-1" aria-labelledby="cancelRideLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title" id="cancelRideLabel">Cancel Ride</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="modal-body text-center">
        <p class="mb-3">Are you sure you want to cancel this ride?</p>
        <textarea id="cancel_reason" class="form-control mb-3" rows="3" placeholder="Optional: Reason for cancellation"></textarea>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No, Go Back</button>
        <button type="button" class="btn btn-danger" id="confirm-cancel-btn">Yes, Cancel Ride</button>
      </div>

    </div>
  </div>
</div>



      <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?> 





<script src="https://cdn.socket.io/4.6.1/socket.io.min.js"></script>
<script>
const socket = io("<?=socketio ?>", {
  reconnection: true,
  transports: ["websocket"]
});

socket.on("connect", function () {
  console.log("Connected to Socket:", socket.id);
});


/*event*/
socket.on("ride_status_update", function(data) {
    console.log("Ride Update:", data);

    // ✅ 1) Check correct request_id
    if (data.request_id != "<?= $request_id ?>") return;

    // ✅ 2) सबसे पहले सारे sections hide कर दो
    hideAllStatus();

    // ✅ 3) अब status के हिसाब से show/update करो
    switch (data.status) {
        case 1:
            $("#searching-driver").show();
            break;
        
        case 2:
            $("#booking-success").show();
            $(".driver-details").show();

            // Driver Details भरना
            $("#start_ride_otp").text(data.start_ride_otp || "---");
            $("#car_type_master").text(data.car_type_master || "---");
            $("#car_number").text(data.car_number || "---");
            $("#driver_name").text(data.driver_name || "---");
            $("#driver_mobile").text(data.driver_mobile || "---");
            $("#driver_image").attr("src", data.driver_image || "");
            break;
        
        case 3:
            $("#booking-start").show();
            break;
        
        case 4:
            $("#complete-start").show();
            $("#rating-section").show();
            break;

        case 5:
            $("#booking-cancel").show();
            break;
    }
});

// ✅ Helper Function: Hide All
function hideAllStatus() {
    $("#searching-driver").hide();
    $("#booking-success").hide();
    $(".driver-details").hide();
    $("#booking-start").hide();
    $("#complete-start").hide();
    $("#rating-section").hide();
    $("#booking-cancel").hide();
}













</script>
