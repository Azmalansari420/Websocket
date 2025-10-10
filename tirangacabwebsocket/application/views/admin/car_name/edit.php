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
                           <label>Select Car Master Type </label>
                           <select class="selectpicker  form-control" required name="car_type_id" data-style="btn-default" data-live-search="true"  id="car_type_id">
                              <?php
                              $card = $this->db->get_where('car_type_master',array('status'=>1))->result_object();
                              foreach($card as $data)
                                 { ?>
                              <option <?php if($EDITDATA[0]->car_type_id==$data->id) echo "selected"; ?> value="<?=$data->id ?>"><?=$data->name ?></option>
                           <?php } ?>
                           </select>
                        </div>

                        <div class="col-6 form-group"  style="display:none;">
                           <label>Select Car Brand</label>
                           <select class="selectpicker  form-control" required name="car_brand_id" data-style="btn-default" data-live-search="true" id="car_brand_id">
                              <?php
                              $card = $this->db->get_where('car_brand',array('status'=>1))->result_object();
                              foreach($card as $data)
                                 { ?>
                              <option <?php if($EDITDATA[0]->car_brand_id==$data->id) echo "selected"; ?> value="<?=$data->id ?>"><?=$data->name ?></option>
                           <?php } ?>
                           </select>
                        </div>


                      

                        <div class="col-6 form-group">
                           <label>Name </label>
                           <input type="text" class="form-control" name="name" value="<?=$EDITDATA[0]->name ?>">
                        </div>

                     </div>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="card m-b-15">
                     <div class="row card-body">
                        <div class="col-12 form-group d-none">
                           <label>Click to Upload Image</label>
                           <input type="file" id="image-input" class="form-control" name="image">
                           <input  type="hidden" class="form-control" name="oldimage" value="<?php echo $EDITDATA[0]->image; ?>">
                           <?php
                           if(!empty($EDITDATA[0]->image))
                              { ?>
                           <img id="image-preview" src="<?php echo base_url($upload_path); ?><?php echo $EDITDATA[0]->image; ?>" alt="Image Preview" width="100px" >
                        <?php } ?>
                        </div>

                        <div class="col-12 form-group m-b-0">
                           <label>Select Status</label>
                           <select class="selectpicker form-control" required name="status" data-style="btn-default" data-live-search="true">
                              <option value="1"  <?php if($EDITDATA[0]->status==1)echo 'selected'; ?>>Show</option>
                              <option value="0" <?php if($EDITDATA[0]->status==0)echo 'selected'; ?>>Hide</option>
                           </select>
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
     
     
$(document).on("change", "#car_type_id", function() {
    car_brand();
});

function car_brand() {
    var car_type_id = $("#car_type_id").val();

    $.ajax({
        url: "<?= base_url('admin_con/Car_name/get_car_brand') ?>",
        method: "POST",
        data: { car_type_id: car_type_id },  // ✅ No need for FormData
        dataType: "json",
        success: function(response) {
            if (response.status == "200") {
                $("#car_brand_id").html(response.data);

                // ✅ Refresh selectpicker
                $("#car_brand_id").selectpicker("refresh");
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX Error:", error);
        }
    });
}

</script>
   </body>
</html>