<?php 
$randno = rand(999,9999);
$device_id = $this->input->get('device_id');
if(!empty($device_id) && $device_id!='undefined')
{
    $device_id = $device_id;
}
else
{
    $device_id = uniqid();
}

$token = $this->input->get('token');
if(!empty($token) && $token!='undefined')
{
    $token = $token;
}
else
{
    $token = rand();
}



include('include/header.php');
?>
      

<style>
   .h1title
   {
      font-size: 25px;
   }
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

.btn-warning {
   background-color: #FFB300;
   border-color: #FFB300;
   color: #000;
}

.btn-warning:hover {
   background-color: #FFA000;
   border-color: #FFA000;
}
body {
    padding-bottom: 0px;
 }


 .captcha-box {
    font-size: 24px;
    font-weight: bold;
    letter-spacing: 5px;
    padding: 8px 16px;
    background: #f0f0f0;
    border-radius: 6px;
    border: 1px solid #ccc;
    user-select: none;
}

.imagelogo{
   background: black;
    padding: 15px;
    border-radius: 22px;
}

.app-logo {
    width: fit-content;
    height: fit-content;
    background-color: snow;
    color: white;
    border-radius: unset;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 40px;
    margin: 0 auto;
}

</style>
      <div class="overlay" id="overlay"></div>
      <!-- Auth Container -->
      <div class="auth-container">
         <!-- Logo and Header -->
         <div class="text-center mb-3">
            <div class="app-logo mb-3 mt-3">
               <img src="<?=base_url() ?>media/uploads/site_setting/<?=$sitesetting[0]->logo ?>" class="imagelogo">
            </div>
            <h1 class="h1title">Create Account</h1>
            <p class="text-muted">Sign up to get started</p>
         </div>
         <!-- Sign In Form -->
         <form class="auth-form" action="<?=base_url('api/auth/login') ?>" method="post">
            <input type="hidden" name="device_id" value="<?=$device_id ?>" id="device_id">
            <input type="hidden" name="token" value="<?=$token ?>" id="firebase_token">
            <div class="mb-3">
               <label for="name" class="form-label">Full Name</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-person text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-start-0" id="name" placeholder="Enter your full name">
               </div>
            </div>

            <div class="mb-3">
               <label for="email" class="form-label">Email</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-envelope text-muted"></i>
                  </span>
                  <input type="email" class="form-control border-start-0" id="email" placeholder="Enter your email">
               </div>
            </div>
            <div class="mb-3">
               <label for="mobile" class="form-label">Enter Mobile Number</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-telephone text-muted"></i>
                  </span>
                  <input type="tel" class="form-control border-start-0" id="mobile" placeholder="Enter Mobile number" >
               </div>
            </div>

            <div class="mb-3">
               <label for="password" class="form-label">Enter Password</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-lock text-muted"></i>
                  </span>
                  <input type="password" class="form-control border-start-0 border-end-0" id="password" placeholder="Enter Password" >
                  <button class="input-group-text bg-transparent border-start-0" id="togglePassword" type="button">
                  <i class="bi bi-eye text-muted"></i>
                  </button>
               </div>
            </div>

                      

            <div class="d-grid gap-2 mb-4">
               <a href="javascript:void(0);" class="btn-app pulse-animation p-2 fw-bold btn register-btn text-white">Register Now</a>
            </div>
            <!-- Social Sign In -->

            <div class="text-center">
               <p class="mb-0">Already have an account? <a href="login.php" class="text-primary-color text-decoration-none">Sign In</a></p>
            </div>
            
         </form>
      </div>


 <?php 
include('include/footer.php');
?>   

<script>

    $(document).on("click", ".register-btn",(function(e) {
      login_distibuter();
    }));

    function login_distibuter()
    {
        var device_id = $("#device_id").val();
        var firebase_token = $("#firebase_token").val();
        var name = $("#name").val();
        var email = $("#email").val();
        var mobile = $("#mobile").val();
        var password = $("#password").val();

        if(name=="")
        {
            toaster("Enter Your Name.", 'error');
            return false;
        }
        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
            toaster("Invalid Email Address.", 'error');
            return false;
        }
        if(mobile=="")
        {
            toaster("Enter Mobile No.", 'error');
            return false;
        }
        if(password=="")
        {
            toaster("Enter Your Password.", 'error');
            return false;
        }

        var form = new FormData();
        form.append("name", name);
        form.append("email", email);
        form.append("mobile", mobile);
        form.append("password", password);
        form.append("firebase_token", firebase_token);
        form.append("device_id", device_id);

        var settings = {
          "url": "<?=base_url() ?>api/auth/registration",
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

    
        // toaster('This is an error message!', 'error');
</script>

