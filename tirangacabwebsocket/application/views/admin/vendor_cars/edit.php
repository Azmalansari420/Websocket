<!DOCTYPE html>
<html lang="en">
   <title>Update <?=$page_title ?></title>
   <?php $this->load->view('admin/include/allcss') ?>
   <body>
      <div id="app" class="app app-header-fixed app-sidebar-fixed">
         <?php $this->load->view('admin/include/topbar') ?>
         <?php $this->load->view('admin/include/sidebar') ?>
         <div id="content" class="app-content">
            <h1 class="page-header add-header">Update <?=$page_title ?> </h1>
            <form class="row" method="post" enctype="multipart/form-data" action="#">
               <div class="col-lg-8">
                  <div class="card m-b-15">
                     <div class="row card-body">


                        <div class="col-6 form-group">
                           <label>Vendor Name </label>
                           <input type="text" class="form-control" name="vendor_id" value="<?=username($EDITDATA[0]->vendor_id) ?>" readonly/>
                        </div>


                       <!--  <div class="col-6 form-group">
                           <label>Car Brand Name </label>
                           <input type="text" class="form-control" name="car_brand_id" value="<?=car_brandname($EDITDATA[0]->car_brand_id) ?>" readonly/>
                        </div>


                        <div class="col-6 form-group">
                           <label>Car Name </label>
                           <input type="text" class="form-control" name="car_model_id" value="<?=car_name($EDITDATA[0]->car_model_id) ?>" readonly/>
                        </div> -->

                        
                        <div class="col-6 form-group">
                           <label>Car Name </label>
                           <input type="text" class="form-control" name="car_name_id" value="<?=car_name($EDITDATA[0]->car_name_id) ?>" readonly/>
                        </div>

                        <div class="col-6 form-group">
                           <label>Car Number </label>
                           <input type="text" class="form-control" name="car_number" value="<?=($EDITDATA[0]->car_number) ?>" readonly/>
                        </div>
                        <div class="col-6 form-group">
                           <label>Car MFG Year </label>
                           <input type="text" class="form-control" name="car_mfg_year" value="<?=($EDITDATA[0]->car_mfg_year) ?>" readonly/>
                        </div>

                        <span style="border-bottom: 1px solid red;width: 100%;margin: 30px 0;"></span>

                        <div class="col-12 text-center mb-4">
                           <h3>Car Image & Document</h3>
                        </div>

                        <?php

                        $vendor_cars_document = $this->db->get_where('vendor_cars_document',array('vendor_cars_id'=>@$EDITDATA[0]->id))->result_object();
                        if(!empty($vendor_cars_document))
                        {
                           $vendor_cars_document = $vendor_cars_document[0];
                        }
                        ?>


                        <div class="col-4 form-group text-center">
                           <label>Car Registration Certificate</label><br>
                           <a href="<?=base_url('media/uploads/'.@$vendor_cars_document->registration_certificate) ?>" download>
                              <img src="<?=base_url('media/uploads/'.@$vendor_cars_document->registration_certificate) ?>" width="100px" class="mb-3">
                           </a>
                        </div>

                        <div class="col-4 form-group text-center">
                           <label>Car Fitness Certificate</label><br>
                           <a href="<?=base_url('media/uploads/'.@$vendor_cars_document->fitness_certificate) ?>" download>
                              <img src="<?=base_url('media/uploads/'.@$vendor_cars_document->fitness_certificate) ?>" width="100px" class="mb-3">
                           </a>
                        </div>

                        <div class="col-4 form-group text-center">
                           <label>Car Insurance</label><br>
                           <a href="<?=base_url('media/uploads/'.@$vendor_cars_document->insurance) ?>" download>
                              <img src="<?=base_url('media/uploads/'.@$vendor_cars_document->insurance) ?>" width="100px" class="mb-3">
                           </a>
                        </div>

                        <div class="col-4 form-group text-center">
                           <label>Car Pollution</label><br>
                           <a href="<?=base_url('media/uploads/'.@$vendor_cars_document->pollution) ?>" download>
                              <img src="<?=base_url('media/uploads/'.@$vendor_cars_document->pollution) ?>" width="100px" class="mb-3">
                           </a>
                        </div>

                        <div class="col-4 form-group text-center">
                           <label>Car Permit local</label><br>
                           <a href="<?=base_url('media/uploads/'.@$vendor_cars_document->permit_local) ?>" download>
                              <img src="<?=base_url('media/uploads/'.@$vendor_cars_document->permit_local) ?>" width="100px" class="mb-3">
                           </a>
                        </div>


                        <div class="col-4 form-group text-center">
                           <label>Car Permit National</label><br>
                           <a href="<?=base_url('media/uploads/'.@$vendor_cars_document->permit_national) ?>" download>
                              <img src="<?=base_url('media/uploads/'.@$vendor_cars_document->permit_national) ?>" width="100px" class="mb-3">
                           </a>
                        </div>


                        <div class="col-12 form-group text-center">
                           <label>4 Vehicle pics </label><br>
                           <?php
                           $getdocimage = json_decode(@$vendor_cars_document->vehicle_pics);
                           if(!empty($getdocimage))
                           {
                              foreach($getdocimage as $value)
                                 { ?>


                           <a href="<?=base_url('media/uploads/'.$value) ?>" download>
                              <img src="<?=base_url('media/uploads/'.$value) ?>" width="100px" class="mb-3" style="margin-right: 10px;">
                           </a>
                           <?php } } ?>
                        </div>




                        
                        

                        


                      
                     </div>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="card m-b-15">
                     <div class="row card-body">
                        <div class="col-12 form-group" style="display:none;">
                           <label>Car Per Km/Price </label>
                           <input type="text" class="form-control" name="car_perkm_price" value="<?=($EDITDATA[0]->car_perkm_price) ?>" />
                        </div>        

                        <div class="col-12 form-group ">
                           <label>Select Status</label>
                           <select id="statusSelect" class="selectpicker form-control" required name="status" data-style="btn-default" data-live-search="true">
                              <option value="0"  <?php if($EDITDATA[0]->status==0)echo 'selected'; ?>>Pending</option>
                              <option value="1"  <?php if($EDITDATA[0]->status==1)echo 'selected'; ?>>Accept</option>
                              <option value="2" <?php if($EDITDATA[0]->status==2)echo 'selected'; ?>>Reject</option>
                           </select>
                        </div>

                        <div class="col-12 form-group" id="rejectNote" style="display:none;">
                            <label>Reject Note</label>
                            <input type="text" class="form-control" name="reject_msg" value="<?= $EDITDATA[0]->reject_msg ?>" />
                        </div>





                        <div class="col-12 form-group mt-4">
                           <button type="submit" name="submit" class="btn btn-purple">Update <?=$page_title ?></button>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
         </div>
         <a href="#" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
      </div>
      <?php $this->load->view('admin/include/theams') ?>
      <?php $this->load->view('admin/include/allscript') ?>


      <script>
$(document).ready(function(){
    function toggleRejectNote(){
        if($("#statusSelect").val() == "2"){
            $("#rejectNote").show();
        } else {
            $("#rejectNote").hide();
        }
    }
    
    // Initial check (for edit mode)
    toggleRejectNote();
    
    // On change
    $("#statusSelect").change(function(){
        toggleRejectNote();
    });
});
</script>
   </body>
</html>