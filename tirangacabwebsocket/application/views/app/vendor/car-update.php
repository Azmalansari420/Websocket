 <?php 

$id = $this->input->get('id');
$getdata = $this->db->get_where('vendor_cars',array('id'=>$id))->result_object();
if(!empty($getdata))
{
   $getdata = $getdata[0];

   $cardocument = $this->db->get_where('vendor_cars_document',array('vendor_cars_id'=>$id))->result_object();
   $cardocument = $cardocument[0];
   // print_r($cardocument);
   // die;
}

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
                           <option <?php if($getdata->car_brand_id==$data->id) echo 'selected'; ?> value="<?=$data->id ?>"><?=$data->name ?></option>
                        <?php } ?>
                        </select>
                     </div>
                  </div>
                  <div class="mb-3" style="display:none;">
                     <label for="car_model_id" class="form-label">Select Car Model</label>
                     <div class="input-group">
                        <select class="form-select car_model_id" id="car_model_id">
                           <?php
                           $car_name = $this->db->get_where('car_brand',array('status'=>1))->result_object();
                           foreach($car_name as $data)
                              { ?>
                           <option <?php if($getdata->car_model_id==$data->id) echo 'selected'; ?> value="<?=$data->id ?>"><?=$data->name ?></option>
                        <?php } ?>
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
                           <option <?php if($getdata->car_name_id==$data->id) echo 'selected'; ?> value="<?=$data->id ?>"><?=$data->name ?></option>
                        <?php } ?>
                        </select>
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="car_number" class="form-label">Enter Car Number</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="car_number" placeholder="Enter Car Number" value="<?=@$getdata->car_number ?>">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="car_mfg_year" class="form-label">Enter Car Mfg Year</label>
                     <div class="input-group">
                        <input type="text" class="form-control border-start-0" id="car_mfg_year" placeholder="Enter Car Mfg Year" value="<?=@$getdata->car_mfg_year ?>">
                     </div>
                  </div>


                  <div class="mb-3 text-center">
                     <p style="background: black;padding: 6px;color: white;border-radius: 10px;">Required docs for add car</p>
                  </div>

                  <div class="mb-3">
                     <label for="registration_certificate" class="form-label">Registration Certificate </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="registration_certificate" required>
                        <input type="hidden" name="old_registration_certificate" value="<?=@$cardocument->registration_certificate ?>" id="old_registration_certificate">
                        <img src="<?=base_url('media/uploads/'.$cardocument->registration_certificate) ?>" width="100px" class="mb-3">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="fitness_certificate" class="form-label">Fitness Certificate </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="fitness_certificate" required>
                        <input type="hidden" name="old_fitness_certificate" value="<?=@$cardocument->fitness_certificate ?>" id="old_fitness_certificate">
                        <img src="<?=base_url('media/uploads/'.$cardocument->fitness_certificate) ?>" width="100px" class="mb-3">
                     </div>
                  </div>

                  <div class="mb-3">
                     <label for="insurance" class="form-label">Insurance  </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="insurance" required>
                        <input type="hidden" name="old_insurance" value="<?=@$cardocument->insurance ?>" id="old_insurance">
                        <img src="<?=base_url('media/uploads/'.$cardocument->insurance) ?>" width="100px" class="mb-3">
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="pollution" class="form-label">Pollution   </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="pollution" required>
                        <input type="hidden" name="old_pollution" value="<?=@$cardocument->pollution ?>" id="old_pollution">
                        <img src="<?=base_url('media/uploads/'.$cardocument->pollution) ?>" width="100px" class="mb-3">
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="permit_local" class="form-label">Permit local</label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="permit_local" required>
                        <input type="hidden" name="old_permit_local" value="<?=@$cardocument->permit_local ?>" id="old_permit_local">
                        <img src="<?=base_url('media/uploads/'.$cardocument->permit_local) ?>" width="100px" class="mb-3">
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="permit_national" class="form-label">Permit national  </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="permit_national" required>
                        <input type="hidden" name="old_permit_national" value="<?=@$cardocument->permit_national ?>" id="old_permit_national">
                        <img src="<?=base_url('media/uploads/'.$cardocument->permit_national) ?>" width="100px" class="mb-3">
                     </div>
                  </div>
                  <div class="mb-3">
                     <label for="vehicle_pics" class="form-label">4 Vehicle pics  </label>
                     <div class="input-group">
                        <input type="file" class="form-control border-start-0" id="vehicle_pics" name="vehicle_pics[]" multiple required>
                        

                     </div>

                     <div class="row mt-2">
                     <?php
                     $getdocimage = json_decode($cardocument->vehicle_pics);
                     if(!empty($getdocimage))
                     {
                        foreach($getdocimage as $value)
                           { ?>
                        <div class="col-3 mb-2 image-box" data-image="<?= $value ?>">
                           <img src="<?= base_url('media/uploads/' . $value) ?>" class="img-fluid">
                           <a href="javascript:void(0);" class="remove-btn text-danger">Remove</a>
                        </div>

                     <?php } } ?>
                     </div>

                     <input type="hidden" name="existing_vehicle_pics" id="existing_vehicle_pics" value='<?= json_encode($getdocimage ?? []) ?>'>



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


 $(document).on('click', '.remove-btn', function () {
    var box = $(this).closest('.image-box');
    var img = box.data('image');

    // Remove the box visually
    box.remove();

    // Update hidden input value
    let images = JSON.parse($('#existing_vehicle_pics').val());
    images = images.filter(function(item) {
        return item !== img;
    });
    $('#existing_vehicle_pics').val(JSON.stringify(images));
});


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


    function insertdata() 
    {
       var car_brand_id = $("#car_brand_id").val();
       var car_model_id = $("#car_model_id").val();
       var car_number = $("#car_number").val();
       var car_name_id = $("#car_name_id").val();
       var car_mfg_year = $("#car_mfg_year").val();
       var vendor_car_id = "<?= @$getdata->id ?>"; // hidden id from PHP

       var registration_certificate = $('#registration_certificate')[0].files;
       var fitness_certificate = $('#fitness_certificate')[0].files;
       var insurance = $('#insurance')[0].files;
       var pollution = $('#pollution')[0].files;
       var permit_local = $('#permit_local')[0].files;
       var permit_national = $('#permit_national')[0].files;
       var vehicle_pics = $('#vehicle_pics')[0].files;
       var existing_vehicle_pics = $('#existing_vehicle_pics').val();

       if (car_name_id === '' || car_number === '' || car_mfg_year === '') {
           toaster("All fields are required", 'error');
           return;
       }

       var form = new FormData();
       form.append("id", vendor_car_id); // Pass id for update
       form.append("car_brand_id", car_brand_id);
       form.append("car_model_id", car_model_id);
       form.append("car_name_id", car_name_id);
       form.append("car_number", car_number);
       form.append("car_mfg_year", car_mfg_year);

       form.append("old_registration_certificate", $("#old_registration_certificate").val());
       form.append("old_fitness_certificate", $("#old_fitness_certificate").val());
       form.append("old_insurance", $("#old_insurance").val());
       form.append("old_pollution", $("#old_pollution").val());
       form.append("old_permit_local", $("#old_permit_local").val());
       form.append("old_permit_national", $("#old_permit_national").val());
       form.append("existing_vehicle_pics", existing_vehicle_pics);

       if (registration_certificate.length > 0) {
           form.append("registration_certificate", registration_certificate[0]);
       }
       if (fitness_certificate.length > 0) {
           form.append("fitness_certificate", fitness_certificate[0]);
       }
       if (insurance.length > 0) {
           form.append("insurance", insurance[0]);
       }
       if (pollution.length > 0) {
           form.append("pollution", pollution[0]);
       }
       if (permit_local.length > 0) {
           form.append("permit_local", permit_local[0]);
       }
       if (permit_national.length > 0) {
           form.append("permit_national", permit_national[0]);
       }

       for (var i = 0; i < vehicle_pics.length; i++) {
           form.append('vehicle_pics[]', vehicle_pics[i]);
       }

       $.ajax({
           url: "<?=base_url() ?>api/vendor/car_update",
           method: "POST",
           data: form,
           dataType: "json",
           contentType: false,
           processData: false,
           success: function (response) {
               if (response.status == 200) {
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