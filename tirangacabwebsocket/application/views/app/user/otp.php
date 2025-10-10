<?php 
$randno = rand(999,9999);
include(__DIR__ . '/../include/header.php');
 ?>
      

<style>
   .h1title
   {
      font-size: 18px;
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


body {
    padding-bottom: 0px;
 }



.auth-container {
    margin: 75px auto;

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
              <img src="img/logo.png" class="imagelogo">
            </div>
            <h4 class="fw-bold text-primary-color">Dear User</h4>
            <h1 class="h1title">Please Enter OTP to login.</h1>
         </div>
         <!-- Sign In Form -->
         <div class="auth-form">
            <div class="mb-3">
               <label for="phone" class="form-label">OTP</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-octagon-fill text-muted"></i>
                  </span>
                  <input type="tel" class="form-control border-start-0" id="phone" placeholder="xxxx" maxlength="4">
               </div>
            </div>

                                  

            <div class="d-grid gap-2 mb-0">
               <a href="home.php" class="btn-app pulse-animation p-2 fw-bold btn text-white">Proceed to Login</a>
            </div>
            <!-- Social Sign In -->
            
         </div>
      </div>


  <?php
      include(__DIR__ . '/../include/footer.php');  
      ?>    

  <script>
   function refreshCaptcha() {
      const rand = Math.floor(Math.random() * (9999 - 1000 + 1)) + 1000;
      document.getElementById("captchaBox").innerText = rand;
   }
</script>

