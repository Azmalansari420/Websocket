 <?php 
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
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title">Active Car</span>
            </div>
         </div>
         
      </div>
      <!-- Content Container -->
      <div class="p-3">
        
         <!-- Bus Details -->
         <div class="bus-details mt-3">           
            <!-- Cancellation Policy -->
           <!-- Car Number Section -->
            <div class="mb-3">
              <h6 class="fw-bold mb-2">Enter Car Number</h6>
              <div class="auth-form">
                <div class="mb-3">
                  <div class="input-group">
                    <input type="text" class="form-control border-start-0" id="carNumber" placeholder="Enter Car Number">
                  </div>
                </div>
                <div class="d-grid gap-2">
                  <button class="btn btn-primary fw-bold" onclick="showOtpSection()">Get OTP</button>
                </div>
              </div>
            </div>

            <!-- OTP Section (Hidden by default) -->
            <div class="mb-3" id="otpSection" style="display: none;">
              <h6 class="fw-bold mb-2">Enter OTP</h6>
              <div class="auth-form">
                <div class="mb-3">
                  <div class="input-group">
                    <input type="text" class="form-control border-start-0" id="otpInput" placeholder="Enter OTP">
                  </div>
                </div>
              </div>

              <div class="d-grid gap-2 mb-4">
                <button class="btn-app pulse-animation p-2 fw-bold btn login-btn text-white" onclick="verifyOtp()">Submit</button>
              </div>
            </div>

                  

                  



            <!-- Reviews -->
            
         </div>
      </div>

       <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>
    function showOtpSection() 
    {
        const carNumber = document.getElementById('carNumber').value.trim();

        if (!carNumber) {
            toaster("Please enter a car number.", 'error');
            return;
        }

        // AJAX to check and send OTP
        fetch("<?= base_url('api/Driver/verify_car_number') ?>", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ car_number: carNumber }),
        })
        .then(res => res.json())
        .then(data => {
            if (data.status === 'success') {
                document.getElementById('otpSection').style.display = 'block';
                // toaster("OTP sent", 'success');
                toaster("OTP sent: " + data.otp, 'success');
            } else {
                toaster(data.message, 'error');
            }
        })
        .catch(err => {
            console.error("Error:", err);
            toaster("Something went wrong.", 'error');
        });
    }





  //   function verifyOtp() 
  // {
  //     const carNumber = document.getElementById('carNumber').value.trim();
  //     const otp = document.getElementById('otpInput').value.trim();

  //     if (!otp) {
  //         toaster("Please enter OTP.", 'error');
  //         return;
  //     }

  //     fetch("<?= base_url('api/Driver/verify_otp') ?>", {
  //         method: "POST",
  //         headers: { "Content-Type": "application/json" },
  //         body: JSON.stringify({ car_number: carNumber, otp: otp }),
  //     })
  //     .then(res => res.json())
  //     .then(data => {
  //         if (data.status === 'success') {
  //             toaster("OTP verified successfully!", 'success');
              
  //             // Delay redirect slightly to show success toaster
  //             setTimeout(() => {
  //                 window.location.href = data.redirect_url;
  //             }, 1000);
  //         } else {
  //             toaster(data.message || "Invalid OTP.", 'error');
  //         }
  //     })
  //     .catch(error => {
  //         console.error("Error verifying OTP:", error);
  //         toaster("Something went wrong. Please try again.", 'error');
  //     });
  // }

    function verifyOtp() 
    {
    const carNumber = document.getElementById('carNumber').value.trim();
    const otp = document.getElementById('otpInput').value.trim();

    if (!otp) {
        toaster("Please enter OTP.", 'error');
        return;
    }

    // 🔹 Step 1: Get Current Location
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            const latitude = position.coords.latitude;
            const longitude = position.coords.longitude;

            // 🔹 Step 2: Send to API
            fetch("<?= base_url('api/Driver/verify_otp') ?>", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({
                    car_number: carNumber,
                    otp: otp,
                    latitude: latitude,
                    longitude: longitude
                }),
            })
            .then(res => res.json())
            .then(data => {
                if (data.status === 'success') {
                    toaster("OTP verified successfully!", 'success');
                    setTimeout(() => {
                        window.location.href = data.redirect_url;
                    }, 1000);
                } else {
                    toaster(data.message || "Invalid OTP.", 'error');
                }
            })
            .catch(error => {
                console.error("Error verifying OTP:", error);
                toaster("Something went wrong. Please try again.", 'error');
            });

        }, function(error) {
            toaster("Location access denied. Please enable GPS.", 'error');
        });
    } else {
        toaster("Geolocation not supported by this browser.", 'error');
    }
}



</script>

