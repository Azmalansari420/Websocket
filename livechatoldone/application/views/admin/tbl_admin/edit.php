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
                        <div class="col-4 form-group m-b-0">
                           <label>Select Status</label>
                           <select class=" form-control" required name="role">
                              <?php
                                 $role = $this->crud->selectDataByMultipleWhere('role',array('status'=>1,));
                                 foreach($role as $data)
                                    { ?>
                                 <option <?php if($EDITDATA[0]->role==$data->id) echo 'selected'; ?> value="<?=$data->id ?>"><?=$data->name ?></option>
                              <?php } ?>
                           </select>
                        </div>

                        <div class="col-4 form-group">
                           <label>Username</label>
                           <input type="text" class="form-control" name="username" required value="<?php echo $EDITDATA[0]->username; ?>"/>
                        </div>
                        <div class="col-4 form-group">
                           <label>Password</label>
                           <input type="text" class="form-control" name="password" required value="<?php echo $EDITDATA[0]->password; ?>"/>
                        </div>                        
                     </div>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="card m-b-15">
                     <div class="row card-body">

                        <div class="col-12 form-group m-b-0">
                           <label>Select Status</label>
                           <select class=" form-control" required name="status">
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
   </body>
</html>