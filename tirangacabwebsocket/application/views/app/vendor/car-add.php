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
</style>
      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title">Add Car</span>
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

                  <div class="mb-3" style="display:none;">
                     <label for="car_brand_id" class="form-label">Select Car Brand</label>
                     <div class="input-group">
                        <select class="form-select " id="car_brand_id">
                           <option selected>Select Car Brand</option>
                           <?php
                           $carsbrand = $this->db->get_where('car_brand',array('status'=>1))->result_object();
                           foreach($carsbrand as $data)
                              { ?>
                           <option value="<?=$data->id ?>"><?=$data->name ?></option>
                        <?php } ?>
                        </select>
                     </div>
                  </div>
                  <div class="mb-3" style="display:none;">
                     <label for="car_model_id" class="form-label">Select Car Model</label>
                     <div class="input-group">
                        <select class="form-select car_model_id" id="car_model_id">
                           
                        </select>
                     </div>
                  </div>

                  <div class="mb-3" >
                     <label for="car_brand_id" class="form-label">Select Car name</label>
                     <div class="input-group">
                        <select class="form-select " id="car_name_id">
                           <option selected>Select Car name</option>
                           <?php
                           $carsbrand = $this->db->get_where('car_name',array('status'=>1))->result_object();
                           foreach($carsbrand as $data)
                              { ?>
                           <option value="<?=$data->id ?>"><?=$data->name ?></option>
                        <?php } ?>
                        </select>
                     </div>
                  </div>



                  <div class="mb-3">
                     <label for="car_number" class="form-label">Enter Car Number</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="car_number" placeholder="Enter Car Number">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="car_mfg_year" class="form-label">Enter Car Mfg Year</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="car_mfg_year" placeholder="Enter Car Mfg Year">
                     </div>
                  </div>


                  <div class="mb-3 text-center">
                     <p style="background: black;padding: 6px;color: white;border-radius: 10px;">Required docs for add car</p>
                  </div>

                  <div class="mb-3">
                     <label for="registration_certificate" class="form-label">Registration Certificate </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="registration_certificate" required>
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="fitness_certificate" class="form-label">Fitness Certificate </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="fitness_certificate" required>
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="insurance" class="form-label">Insurance  </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="insurance" required>
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="pollution" class="form-label">Pollution   </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="pollution" required>
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="permit_local" class="form-label">Permit local</label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="permit_local" required>
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="permit_national" class="form-label">Permit national  </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="permit_national" required>
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="vehicle_pics" class="form-label">4 Vehicle pics  </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="vehicle_pics" name="vehicle_pics[]" multiple required>

                     </div>
                  </div>


                 
               </div>
            </div>      
                       

                                           

            <div class="d-grid gap-2 mb-4">
               <a href="javascript:void(0);"  class="btn-app pulse-animation p-2 fw-bold btn login-btn text-white submit-btn">Submit</a>
            </div>

            
         </div>
      </div>

       <?php 
      include('include/bottom-menu.php');
      include('include/footer.php');
      ?>
<script>


   /*get_car_name*/

     $(document).on("change", "#car_brand_id",(function(e) {
      car_brand();
    }));

     

   function car_brand() 
    {
        var car_brand_id = $("#car_brand_id").val();
                
        // Prepare form data
        var form = new FormData();
        form.append("car_brand_id", car_brand_id);
        


        $.ajax({
            url: "<?=base_url() ?>api/vendor/get_car_name",
            method: "POST",
            data: form,
            dataType: "json",
            contentType: false,
            processData: false,
            success: function (response) 
            {
                console.log(response);
                $(".car_model_id").html(response.data);
                
            }
        });
    }

















    $(document).on("click", ".submit-btn",(function(e) {
      insertdata();
    }));


    function insertdata(printFlag) 
    {
        var car_brand_id = $("#car_brand_id").val();
        var car_model_id = $("#car_model_id").val();
        var car_number = $("#car_number").val();
        var car_name_id = $("#car_name_id").val();
        var car_mfg_year = $("#car_mfg_year").val();

        var registration_certificate = $('#registration_certificate')[0].files;
        var fitness_certificate = $('#fitness_certificate')[0].files;
        var insurance = $('#insurance')[0].files;
        var pollution = $('#pollution')[0].files;
        var permit_local = $('#permit_local')[0].files;
        var permit_national = $('#permit_national')[0].files;
        var vehicle_pics = $('#vehicle_pics')[0].files;
       


       // if (car_brand_id === '') {
       //      toaster("Select Car Brand", 'error');
       //      return false;
       //   }

       //  if(car_model_id==='')
       //  {
       //   toaster("Select Car Model", 'error');
       //   return false;
       //  }
        
        if(car_name_id=='')
        {
         toaster("Selet Car Name", 'error');
         return false;
        }

        if(car_number=='')
        {
         toaster("Enter Car Number", 'error');
         return false;
        }
        
        if(car_mfg_year=='')
        {
         toaster("Enter Car Mfg Year", 'error');
         return false;
        }

        if(registration_certificate=='')
        {
         toaster("Submit Registration Certificate Image", 'error');
         return false;
        }

        if(fitness_certificate=='')
        {
         toaster("Submit Fitness Certificate Image", 'error');
         return false;
        }

        if(insurance=='')
        {
         toaster("Submit Insurance Image", 'error');
         return false;
        }
        if(pollution=='')
        {
         toaster("Submit Pollution Image", 'error');
         return false;
        }

        if(permit_local=='')
        {
         toaster("Submit Permit local Image", 'error');
         return false;
        }

        if(permit_national=='')
        {
         toaster("Submit Permit national Image", 'error');
         return false;
        }

        if(vehicle_pics=='')
        {
         toaster("Submit 4 Vehicle pics", 'error');
         return false;
        }

        
        // Prepare form data
        var form = new FormData();
        form.append("car_brand_id", car_brand_id);
        form.append("car_model_id", car_model_id);
        form.append("car_name_id", car_name_id);
        form.append("car_number", car_number);
        form.append("car_mfg_year", car_mfg_year);

        form.append("registration_certificate", registration_certificate[0]);
         form.append("fitness_certificate", fitness_certificate[0]);
         form.append("insurance", insurance[0]);
         form.append("pollution", pollution[0]);
         form.append("permit_local", permit_local[0]);
         form.append("permit_national", permit_national[0]);


        

        for (var i = 0; i < vehicle_pics.length; i++) {
            form.append('vehicle_pics[]', vehicle_pics[i]);
        }


        $.ajax({
            url: "<?=base_url() ?>api/vendor/car_add",
            method: "POST",
            data: form,
            dataType: "json",
            contentType: false,
            processData: false,
            success: function (response) 
            {
                console.log(response);
                if (response.status == 200) 
                {
                    toaster(response.message, 'success');
                  
                     setTimeout(() => {
                         window.location.href = response.url || 'home.php';
                     }, 1000);
                  

                } else {
                    toaster(response.message, 'error');
                }
            }
        });
    }


</script>