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

table {
    width: 100%;
    border-collapse: collapse;
}
th, td {
    padding: 8px;
    text-align: left;
    border: 1px solid #ddd;
}
@media screen and (max-width: 600px) {
    table {
        font-size: 14px;
    }
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
               <span class="app-header-title">OTP List</span>
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

                  <div style="overflow-x:auto;">
                      <table border="1" style="width:100%; border-collapse: collapse;">
                          <thead>
                              <tr>
                                  <th>#</th>
                                  <th>Date/Time</th>
                                  <th>Car Number</th>
                                  <th>Driver Name</th>
                                  <th>OTP</th>
                                  <th>Status</th>
                              </tr>
                          </thead>
                          <tbody>
                           <?php
                           $this->db->order_by('id desc');
                           $car_otp_verification = $this->db->get_where('car_otp_verification',array('vendor_id'=>$full_detail->id))->result_object();
                           foreach($car_otp_verification as $key => $data)
                              { ?>
                              <tr>
                                  <td><?=$key+1 ?></td>
                                  <td>
                                     
                                     <?= date('d M, Y', strtotime($data->created_at)); ?><br>
                                     <?= date('h:i A', strtotime($data->created_at)); ?>
                                  </td>
                                  <td><?=$data->car_number ?></td>
                                  <td><?=username($data->driver_id) ?></td>
                                  <td><?=$data->otp ?></td>
                                  <td><?=OTP_status($data->status) ?></td>
                              </tr>
                           <?php } ?>
                          </tbody>
                      </table>
                  </div>
                 
               </div>
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
        var car_mfg_year = $("#car_mfg_year").val();

        var registration_certificate = $('#registration_certificate')[0].files;
        var fitness_certificate = $('#fitness_certificate')[0].files;
        var insurance = $('#insurance')[0].files;
        var pollution = $('#pollution')[0].files;
        var permit_local = $('#permit_local')[0].files;
        var permit_national = $('#permit_national')[0].files;
        var vehicle_pics = $('#vehicle_pics')[0].files;
       


       if (car_brand_id === '') {
            toaster("Select Car Brand", 'error');
            return false;
         }

        if(car_model_id==='')
        {
         toaster("Select Car Model", 'error');
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