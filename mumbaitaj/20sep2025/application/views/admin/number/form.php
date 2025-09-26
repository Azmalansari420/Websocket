<!DOCTYPE html>
<html lang="en">
<title><?=$page_title ?></title>
   <?php $this->load->view('admin/include/allcss') ?>
   <body>
      <div id="app" class="app app-header-fixed app-sidebar-fixed">
         <?php $this->load->view('admin/include/topbar') ?>
         <?php $this->load->view('admin/include/sidebar') ?>
         <div id="content" class="app-content">
            <h1 class="page-header add-header"><?=$page_title ?> </h1>
            <form class="row" method="post" enctype="multipart/form-data" action="<?=base_url($formURL) ?>">

               <input type="hidden" name="id" value="<?=@$EDITDATA->id ?>">

               <div class="col-lg-12">
                  <div class="card m-b-15">
                     <div class="row card-body">
                        <div class="col-4 form-group ">
                           <label>Select Game</label>
                           <select class="select1picker game_id form-control" required name="game_id" data-style="btn-default" data-live-search="true" >
                              <option>--Select Game--</option>
                              <?php 
                              $game = $this->db->get_where('game',array('status'=>1))->result_object();
                              foreach($game as $data)
                                 { ?>
                              <option value="<?=$data->id ?>"  <?= (isset($EDITDATA->game_id) && $EDITDATA->game_id == $data->id) ? 'selected' : '' ?>><?=$data->name ?></option>
                           <?php } ?>
                           </select>
                        </div>

                        

                        <div class="col-4 form-group ">
                           <label>Select Game Time</label>
                           <select class="selectdpicker  form-control" required name="game_time_id" data-style="btn-default" data-live-search="true" >
                              <option>--Select Game Time--</option>
                              <?php 
                              $game = $this->db->get_where('game_times',array('status'=>1))->result_object();
                              foreach($game as $data)
                                 {

                                  ?>
                              <option value="<?=$data->id ?>"  <?= (isset($EDITDATA->game_time_id) && $EDITDATA->game_time_id == $data->game_time_id) ? 'selected' : '' ?>><?=date("h:i A",strtotime($data->gametime)) ?></option>
                           <?php } ?>
                           </select>
                        </div>

                        <div class="col-4 form-group">
                           <label>Number </label>
                           <input type="number" class="form-control" name="number" value="<?=@$EDITDATA->number ?>">
                        </div>

                        <div class="col-4 form-group">
                           <label>Select Date </label>
                           <input type="date" class="form-control" name="create_on" value="<?= isset($EDITDATA->create_on) ? $EDITDATA->create_on : date("Y-m-d"); ?>">
                        </div>


                        <div class="col-4 form-group ">
                           <label>Select Status</label>
                           <select class="selectpicker  form-control" required name="status" data-style="btn-default" data-live-search="true" >
                              <option value="1"  <?= (isset($EDITDATA->status) && $EDITDATA->status == '1') ? 'selected' : '' ?>>Show</option>
                              <option value="0" <?= (isset($EDITDATA->status) && $EDITDATA->status == '0') ? 'selected' : '' ?>>Hide</option>
                           </select>
                        </div>
                        <div class="col-12 form-group mt-4">
                           <button type="submit" name="submit" class="btn btn-purple"><?=$page_title ?></button>
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
   $(document).on("change", ".game_id",(function(e) {
      get_alltimelist();
    }));

    function get_alltimelist()
    {
        var game_id = $(".game_id").val();


        var form = new FormData();
        form.append("game_id", game_id);

        var settings = {
          "url": "<?=base_url('admin_con/number/getalltime') ?>",
          "method": "POST",
          "dataType": "json",
          "timeout": 0,
          "processData": false,
          "mimeType": "multipart/form-data",
          "contentType": false,
          "data": form
        };

        $.ajax(settings).done(function (response) {
         console.log(response);
         if (response.status == 200)
         {
            $("select[name='game_time_id']").html(response.optionlist);
            $('.selectpicker').selectpicker('refresh'); 
         }else{
            $("select[name='game_time_id']").html('<option>No times found</option>');
            $('.selectpicker').selectpicker('refresh');
            }
        });
    }

    
</script>


   </body>
</html>