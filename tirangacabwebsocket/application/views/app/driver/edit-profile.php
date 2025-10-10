 <?php 
include('include/header.php');
include('include/sidebar.php');
?>
<style>
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
      <!-- Overlay -->
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-person-circle me-2 app-header-icon"></i>
               <span class="app-header-title">Profile</span>
            </div>
         </div>
         
      </div>

      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
            <!-- Profile Header -->
            <div class="text-center mb-4">
               <label class="position-relative d-inline-block mb-3">
                  <div class="user-avatar user-avatar-100">
                     <img src="<?=base_url() ?>media/uploads/users/<?=$full_detail->profile_image ?>" alt="img" class="user-image" style="height: 100px;">
                  </div>
                  <input type="file" name="image" accept="image/*" class="upload_image" data-target=".user_profile_image" style="display: none;">                  
                     <i class="bi bi-pencil text-primary-color"></i>
               </label>
               <h5 class="mb-1 profile-name"><?=$full_detail->name ?></h5>
               <p class="text-muted mb-0 profile-mobile"><?=$full_detail->mobile ?></p>
            </div>
          
            <h6 class="section-header">Personal Information</h6>
            <div class="list-item">
               <div class="d-flex justify-content-between align-items-center mb-3">
                  <div class="fw-semibold">Personal Details</div>
                  <button data-bs-toggle="modal" data-bs-target="#editPersonalDetailsModal" class="btn action-btn secondary-action-btn">Edit</button>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Full Name</div>
                  <div class="profile-name"><?=$full_detail->name ?></div>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Email</div>
                  <div><a class="profile-mail"><?=$full_detail->email ?></a></div>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Phone</div>
                  <div class="profile-mobile"><?=$full_detail->mobile ?></div>
               </div>
               <div class="d-flex justify-content-between mb-2">
                  <div class="small text-muted">Date of Birth</div>
                  <div class="profile-dob"><?=$full_detail->dob ?></div>
               </div>
               <div class="d-flex justify-content-between">
                  <div class="small text-muted">Address</div>
                  <div class="text-end profile-address"><?=$full_detail->address ?></div>
               </div>
            </div>
          
           
         </div>
      </div>


      <!-- Edit Personal Details Modal -->
      <div class="modal fade" id="editPersonalDetailsModal" tabindex="-1" aria-labelledby="editPersonalDetailsModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
               <div class="modal-header border-0">
                  <h6 class="modal-title fw-bold" id="editPersonalDetailsModalLabel">Edit Personal Details</h6>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body py-0">
                  <form>
                     
                     <div class="mb-3">
                        <label for="fullName" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="fullName" value="<?=$full_detail->name ?>">
                     </div>
                     <!-- Email -->
                     <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" value="<?=$full_detail->email ?>">
                     </div>
                     <!-- Phone -->
                     <div class="mb-3">
                        <label for="mobile" class="form-label">Phone</label>
                        <div class="input-group">
                           <input type="tel" class="form-control" id="mobile" value="<?=$full_detail->mobile ?>">
                        </div>
                     </div>
                     <!-- Date of Birth -->
                     <div class="mb-3">
                        <label for="dob" class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" id="dob" value="<?=$full_detail->dob ?>">
                     </div>
                     <!-- Address -->
                     <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <textarea class="form-control" id="address" rows="3"><?=$full_detail->address ?></textarea>
                     </div>
                     <!-- Password Verification -->
                     
                  </form>
               </div>
               <div class="modal-footer border-0 pt-0">
                  <button type="button" class="btn action-btn secondary-action-btn w-100 submit-btn">Save Changes</button>
               </div>
            </div>
         </div>
      </div>

      


<?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>


<script>
    const user_id = '<?=$full_detail->id ?>';

    $(".upload_image").on('change', function(){
         var files = [];
         var j=1;      
         for (var i = 0; i < this.files.length; i++)
         {
           if (this.files && this.files[i]) 
           {
               var reader = new FileReader();
               reader.onload = function (e) {                
               update_profile_image(e.target.result);
                   j++;
               }
               reader.readAsDataURL(this.files[i]);
           }
         }
      });

    function  update_profile_image(image)
      {
           var form = new FormData();
           form.append("user_id", user_id);
           form.append("image", image);
           var settings = {
             "url": "<?=base_url() ?>api/user/update_image",
             "method": "POST",
             "processData": false,
             "mimeType": "multipart/form-data",
             "contentType": false,
             "dataType": "json",
             "data": form
           };
           $.ajax(settings).done(function (response) {
            toaster(response.message, 'success');
            if(response.status==200)
            {
                 $(".user_profile_image").attr('src',image);
                 $(".user-image").attr('src',image);
            }
           });
      }


      /**/

      $(document).on("click", ".submit-btn",(function(e) {
          update_profile();
        }));

        function update_profile()
        {
            var name = $("#fullName").val();
            var email = $("#email").val();
            var mobile = $("#mobile").val();
            var dob = $("#dob").val();
            var address = $("#address").val();

            
            var form = new FormData();
            form.append("name", name);
            form.append("email", email);
            form.append("mobile", mobile);
            form.append("dob", dob);
            form.append("address", address);

            var settings = {
              "url": "<?=base_url() ?>api/user/update_profile",
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
              toaster(response.message, 'success');
              $('.profile-name').html(response.data.name)
              $('.profile-mail').html(response.data.email)
              $('.profile-mobile').html(response.data.mobile)
              $('.profile-dob').html(response.data.dob)
              $('.profile-address').html(response.data.address)
            });
        }
</script>

