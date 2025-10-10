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
               <i class="bi bi-bell me-2 app-header-icon"></i>
               <span class="app-header-title">Update Password</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
            
            <form class="auth-form" method="post">

            <div class="mb-3">
               <label for="name" class="form-label">Enter Old Password</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-person text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-start-0 oldpassword" id="name" placeholder="Enter Old Password">
               </div>
            </div>


            <div class="mb-3">
               <label for="npassword" class="form-label">Enter New Password</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-lock text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-start-0 border-end-0 npassword" id="npassword" placeholder="Enter New Password" >
               </div>
            </div>
            <div class="mb-3">
               <label for="password" class="form-label">Enter Confirm Password</label>
               <div class="input-group">
                  <span class="input-group-text bg-transparent border-end-0">
                  <i class="bi bi-lock text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-start-0 border-end-0 cpassword" id="password" placeholder="Enter Confirm Password" >
               </div>
            </div>
                      

            <div class="d-grid gap-2 mb-4">
               <a href="javascript:void(0);" class="btn-app pulse-animation p-2 fw-bold btn submit-btn text-white">Update</a>
            </div>
           
            
         </form>
         </div>
      </div>
      
      <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>

    $(document).on("click", ".submit-btn",(function(e) {
      change_password();
    }));

    function change_password()
    {
        var oldpassword = $(".oldpassword").val();
        var npassword = $(".npassword").val();
        var cpassword = $(".cpassword").val();

        if(oldpassword=="")
        {
            toaster("Enter Old Password.", 'error');
            return false;
        }
        if(npassword=="")
        {
            toaster("Enter New Password.", 'error');
            return false;
        }
        if(cpassword=="")
        {
            toaster("Enter Confirm Password.", 'error');
            return false;
        }

        var form = new FormData();
        form.append("oldpassword", oldpassword);
        form.append("npassword", npassword);
        form.append("cpassword", cpassword);

        var settings = {
          "url": "<?=base_url() ?>api/user/password_update",
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
          // console.log(response);
            toaster(response.message, 'error');
            if(response.status==200)
            {
                $(".oldpassword").val();
                $(".npassword").val();
                $(".cpassword").val();
              toaster(response.message, 'success');
            }
        });
    }

    

</script>

