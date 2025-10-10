 <?php 
include('include/header.php');
include('include/sidebar.php');
?>      <!-- Overlay -->

<style>
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
   i.bi.bi-pencil.text-primary-color {
    position: relative;
    left: 37px;
    bottom: 21px;
    border: 1px solid;
    padding: 5px;
    border-radius: 50%;
    background: white;
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
               <i class="bi bi-person-add me-2 app-header-icon"></i>
               <span class="app-header-title">Add Driver </span>
            </div>
         </div>
         
      </div>
      <!-- Content Container -->
      <div class="p-3">
        
         <!-- Bus Details -->
         <div class="bus-details mt-3">           
            <!-- Cancellation Policy -->
            <div class="mb-3">
               <div class="auth-form">

                  <div class="text-center mb-4">
                    <label class="position-relative d-inline-block mb-3">
                      <div class="user-avatar user-avatar-100">
                        <img src="" alt="img" class="user-image user_profile_image" style="height: 100px;">
                      </div>
                      <input type="file" name="image" accept="image/*" class="user-image upload_image" data-target=".user_profile_image" style="display: none;">
                      <i class="bi bi-pencil text-primary-color"></i>
                    </label>
                  </div>


                  
                  <div class="mb-3">
                     <label for="name" class="form-label">Enter Driver Name</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="name" placeholder="Enter Driver Number">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="name" class="form-label">Enter Driver Mobile Number</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="name" placeholder="Enter Driver Mobile Number">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="name" class="form-label">Enter Driver Email</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="name" placeholder="Enter Driver Email">
                     </div>
                  </div>

                  
                 
               </div>
            </div>      
                       

                                           

            <div class="d-grid gap-2 mb-4">
               <a href="driver-list.php" class="btn-app pulse-animation p-2 fw-bold btn login-btn text-white">Submit</a>
            </div>

            
         </div>
      </div>

       <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>
  document.querySelectorAll('.upload_image').forEach(input => {
    input.addEventListener('change', function (e) {
      const file = e.target.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = function (event) {
          const targetSelector = e.target.getAttribute('data-target');
          const img = document.querySelector(targetSelector);
          if (img) {
            img.src = event.target.result;
          }
        };
        reader.readAsDataURL(file);
      }
    });
  });
</script>

