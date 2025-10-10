<?php
$driver_id = $this->session->userdata("user")['id'];
$active = $this->db->where('driver_id', $driver_id)
    ->where('status', 1)
    ->get('driver_car_history')
    ->row();

$is_online = $active ? true : false;

include('include/header.php');
include('include/sidebar.php');
?>
<style>

  .toggle-switch {
    position: relative;
    display: inline-block;
    width: 60px;
    height: 28px;
  }

  .toggle-switch input {
    opacity: 0;
    width: 0;
    height: 0;
  }

  .slider {
    position: absolute;
    cursor: pointer;
    top: 0; left: 0; right: 0; bottom: 0;
    background-color: #dc3545; /* red = offline */
    transition: .4s;
    border-radius: 34px;
  }

  .slider:before {
    position: absolute;
    content: "";
    height: 22px;
    width: 22px;
    left: 3px;
    bottom: 3px;
    background-color: white;
    transition: .4s;
    border-radius: 50%;
  }

  input:checked + .slider {
    background-color: #28a745; /* green = online */
  }

  input:checked + .slider:before {
    transform: translateX(32px);
  }

  .status-label {
    font-size: 14px;
    margin-left: 10px;
    font-weight: 500;
  }


     .map-wrapper iframe {
   border-radius: 10px;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.search-card {
   margin-top: -29px; /* Pull up to overlap the map slightly */
   background-color: white;
   border-radius: 20px;
   box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
   position: relative;
   z-index: 5;
}
   .map-wrapper iframe {
   border-radius: 10px;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.search-card {
   margin-top: -29px; /* Pull up to overlap the map slightly */
   background-color: white;
   border-radius: 20px;
   box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
   position: relative;
   z-index: 5;
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
    a.btn.rounded-3.fs-14.bg-primary-color.text-dark{
      color: black !important;
      font-size: 12px;
   }


   .fixed-car-icon 
   {
    position: fixed;
    right: 16px;
    bottom: 80px;
    font-size: 32px;
    color: #007bff;
    z-index: 1000;
    background: white;
    padding: 3px 10px;
    border-radius: 50%;
    box-shadow: 0 2px 8px rgba(0,0,0,0.2);
    cursor: pointer;
  }

.fixed-car-icon i 
  {
    font-size: 32px;
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
            
         </div>
         <div>
            <div class="d-flex align-items-center">
               <label class="toggle-switch">
                 <input type="checkbox" id="statusToggle" <?= $is_online ? 'checked' : '' ?>>
                 <span class="slider"></span>
               </label>
               <span class="status-label" id="statusText">
                  <?= $is_online ? 'Online' : 'Offline' ?>
               </span>
            </div>
         </div>
      </div>




      <!-- Main Content Area -->
      <div class="content-area">
         <!-- Map Section -->
       

         <!-- Search Section -->
         <div class="search-card p-3 mt-0">
            <!-- Main Tabs -->
            <div class="d-flex justify-content-between mb-3">
               <button type="button" class="btn btn-outline-warning w-50 me-1 active" id="tab-new-booking" onclick="selectMainTab('new-booking')">New Booking</button>
               <button type="button" class="btn btn-outline-warning w-50 ms-1" id="tab-active-booking" onclick="selectMainTab('active-booking')">Active Booking</button>
            </div>

           
            <div id="new-booking" class="tab-content new-booking">
              <?php include('new-booking-list.php'); ?>
           </div>

           <!-- active booking -->

           <div id="active-booking" class="tab-content d-none active-booking">
              <?php include('active-booking-list.php'); ?>
           </div>
            
         </div>


         
        
      </div>
      <!-- Bottom Navigation Bar (App-style) -->
      


<a href="car-otp.php">
   <div class="fixed-car-icon">
     <i class="bi bi-car-front-fill"></i>
   </div>
</a>

<?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>



<!-- booking Accept -->
<div class="modal fade" id="acceptModal" tabindex="-1" aria-labelledby="acceptModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Accept Booking</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure you want to accept the booking for 
        <strong id="modalClientName">---</strong> 
        (Mobile: <span id="modalClientMobile">---</span>)?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary btn-sm" id="confirmAcceptBtn">Yes, Accept</button>
      </div>
    </div>
  </div>
</div>



<!-- booking Complete -->

<div class="modal fade" id="CompleteModal" tabindex="-1" aria-labelledby="acceptModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Complete Booking</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="mb-3">
            <h6 class="fw-bold mb-2">Enter OTP</h6>
            <div class="auth-form">
               <div class="mb-3">
                  <div class="input-group">
                     <input type="tel" class="form-control border-start-0" id="accountno" placeholder="Enter OTP" >
                  </div>
               </div>
            </div>
         </div> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary btn-sm" onclick="completebooking()">Submit</button>
      </div>
    </div>
  </div>
</div>






<script src="https://cdn.socket.io/4.6.1/socket.io.min.js"></script>
<script>
const device_id = "<?=$this->session->userdata('device_id');?>";

const socket = io("<?=socketio ?>", {
  reconnection: true,
  reconnectionAttempts: Infinity,
  reconnectionDelay: 2000,
  transports: ["websocket"]
});

socket.on("connect", function () {
  console.log("Connected:", socket.id);
  socket.emit("register_driver", device_id);
});

socket.on("new_booking", function (data) {
  console.log("New Booking:", data);
  // यहां driver panel में update UI
  reloadSections();
});



function reloadSections() {
  $.ajax({
    url: "<?=base_url('api/booking/new_booking_list_reload')?>",
    success: function (html) {
      $("#new-booking").html(html);
    }
  });

  $.ajax({
    url: "<?=base_url('api/booking/active_booking_list_reload')?>",
    success: function (html) {
      $("#active-booking").html(html);
    }
  });
}

















/*-------------tab switch-----------------*/
  function selectMainTab(tab) 
  {
    document.querySelectorAll('.tab-content').forEach(function(el) {
      el.classList.add('d-none');
    });
    document.querySelectorAll('.search-card .btn').forEach(function(btn) {
      btn.classList.remove('active');
    });
    document.getElementById(tab).classList.remove('d-none');
    document.getElementById('tab-' + tab).classList.add('active');
  }


/*=-=================TOGGLE SWITHCJ =====================*/

    document.getElementById("statusToggle").addEventListener("change", function () {
        const statusText = document.getElementById("statusText");
        if (this.checked) {
          statusText.textContent = "Online";
        } else {
          statusText.textContent = "Offline";
        }
      });

      fetch("<?= base_url('api/driver/get_driver_status') ?>")
        .then(res => res.json())
        .then(data => {
          const checkbox = document.getElementById("statusToggle");
          const statusText = document.getElementById("statusText");

          if (data.status === "online") {
            checkbox.checked = true;
            statusText.textContent = "Online";
          } else {
            checkbox.checked = false;
            statusText.textContent = "Offline";
          }
        });


        /*ONLINE OFFLINE*/
        document.getElementById("statusToggle").addEventListener("change", function () {
          const statusText = document.getElementById("statusText");
          let newStatus = this.checked ? 1 : 0;
          statusText.textContent = newStatus === 1 ? "Online" : "Offline";

          $.ajax({
            url: "<?= base_url('api/driver/toggle_driver_status') ?>",
            type: "POST",
            data: { status: newStatus },
            dataType: "json",
            success: function (res) {
              toaster(res.message, res.status);
              if (res.status !== "success") {
                $("#statusToggle").prop("checked", !newStatus);
                statusText.textContent = !newStatus ? "Online" : "Offline";
              }
            }
          });
        });





/*-----------accept Booking-----------------*/
  let selectedBookingId = null;
  $(document).on("click", ".acceptBookingBtn", function () 
  {
      selectedBookingId = $(this).data("id");
      let clientName   = $(this).data("client-name");
      let clientMobile = $(this).data("client-mobile");
      $("#modalClientName").text(clientName);
      $("#modalClientMobile").text(clientMobile);
  });

  $("#confirmAcceptBtn").on("click", function () 
  {
      if (!selectedBookingId) return;
      $.ajax({
          url: "<?= base_url('api/driver/accept_booking') ?>",
          type: "POST",
          data: { booking_id: selectedBookingId },
          dataType: "json",
          success: function (res) {
              if (res.status === "success") {
                  toaster(res.message, "success");
                  $("#acceptModal").modal("hide");
                  $("#new-booking").html(res.new_booking_html);
                  $("#active-booking").html(res.active_booking_html);

              } else {
                  toaster(res.message, "error");
              }
          }
      });
  });

/*-----------------complete booking-------------------*/

  let completeBookingId = null;

  $(document).on("click", ".CompleteBookingBtn", function () {
      completeBookingId = $(this).data("id");

      // Send OTP
      $.post("<?= base_url('api/driver/send_complete_otp') ?>", { booking_id: completeBookingId }, function (res) {
          if (res.status === "success") {
              toaster("OTP sent to client mobile ✅ OTP."+res.otp, "success");
              $("#CompleteModal").modal("show");
          } else {
              toaster(res.message, "error");
          }
      }, "json");
  });

  function completebooking() {
      let otp = $("#accountno").val();

      if (!otp) {
          toaster("Enter OTP", "error");
          return;
      }

      $.post("<?= base_url('api/driver/verify_complete_otp') ?>", 
          { booking_id: completeBookingId, otp: otp }, 
          function (res) {
              if (res.status === "success") {
                  toaster(res.message, "success");
                  $("#CompleteModal").modal("hide");

                  // Refresh lists
                  $(".new-booking").html(res.new_booking_html);
                  $(".active-booking").html(res.active_booking_html);
              } else {
                  toaster(res.message, "error");
              }
          }, "json"
      );
  }












</script>
