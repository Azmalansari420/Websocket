 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>
   a.btn.rounded-3.fs-14.bg-primary-color.text-white{
      color: black !important;
      font-size: 12px;

   }

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


.toggle-switch {
    position: relative;
    width: 50px;
    height: 24px;
}
.toggle-switch input {
    display: none;
}
.slider {
    position: absolute;
    cursor: pointer;
    top: 0; left: 0; right: 0; bottom: 0;
    background-color: #ccc;
    border-radius: 24px;
    transition: .3s;
}
.slider:before {
    position: absolute;
    content: "";
    height: 18px; width: 18px;
    left: 3px; bottom: 3px;
    background-color: white;
    border-radius: 50%;
    transition: .3s;
}
input:checked + .slider {
    background-color: #4CAF50;
}
input:checked + .slider:before {
    transform: translateX(26px);
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
               <i class="bi bi-ticket-perforated me-2 app-header-icon"></i>
               <span class="app-header-title">Car Assign History</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">



            <div class="mb-3">
               <div class="auth-form">

                  <div style="overflow-x:auto;">
                      <table border="1" style="width:100%; border-collapse: collapse;">
                          <thead>
                              <tr>
                                  <th>#</th>
                                  <th>Assign Date/Time</th>
                                  <th>UnAssign Date/Time</th>
                                  <th>Car Number</th>
                                  <th>Status</th>
                              </tr>
                          </thead>
                          <tbody>
                           <?php
                           // $this->db->order_by('id desc');
                           $this->db->order_by('assigned_at', 'DESC');
                           $car_otp_verification = $this->db->get_where('driver_car_history',array('driver_id'=>$full_detail->id))->result_object();
                           foreach($car_otp_verification as $key => $data)
                              { ?>
                              <tr>
                                  <td><?=$key+1 ?></td>
                                  <td>                                     
                                     <?= date('d M, Y', strtotime($data->assigned_at)); ?><br>
                                     <?= date('h:i A', strtotime($data->assigned_at)); ?>
                                  </td>
                                  <td>
                                     <span class="unassigned_at<?= $data->id ?>">
                                         <?php
                                         if (!empty($data->unassigned_at)) {
                                             echo date('d M, Y', strtotime($data->unassigned_at)) . '<br>' . date('h:i A', strtotime($data->unassigned_at));
                                         } else {
                                             echo '--null--';
                                         }
                                         ?>
                                     </span>
                                 </td>


                                  <td><?=$data->car_number ?></td>
                                  <td>
                                     <div class="d-flexd align-items-center">
                                        <label class="toggle-switch">
                                            <input type="checkbox"
                                              class="statusToggle"
                                              data-history-id="<?= $data->id ?>"
                                              <?= ($data->status == 1) ? 'checked' : '' ?>
                                              <?= ($data->status != 1) ? 'disabled' : '' ?>>
                                            <span class="slider"></span>
                                        </label>
                                        <span style="font-size: 11px;font-weight: 600;text-align: center;" class="status-label "><?= ($data->status == 1) ? 'Leave Car' : 'Car Left' ?></span>
                                    </div>

                                 </td>

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
  
  $(document).on('change', '.statusToggle', function() {
    let checkbox = $(this);
    let history_id = checkbox.data('history-id');
    let statusLabel = checkbox.closest('div').find('.status-label');

    let new_status = checkbox.is(':checked') ? 1 : 2;
    statusLabel.text(new_status === 1 ? 'Leave Car' : 'Car Left');

    $.ajax({
        url: '<?= base_url("api/driver/toggle_car_status") ?>',
        type: 'POST',
        data: { history_id: history_id, status: new_status },
        dataType: 'json',
        success: function(res) 
        {
             toaster(res.message, res.status);
             if (res.status === 'success' && new_status === 2) {
                 $('.unassigned_at' + history_id).html(res.unassigned_at);
                 checkbox.prop('disabled', true); // leave ke baad disable
                 statusLabel.text('Car Left');
             }
             if (res.status !== 'success') {
                 checkbox.prop('checked', !checkbox.is(':checked')); 
                 statusLabel.text(!checkbox.is(':checked') ? 'Leave Car' : 'Car Left');
             }
         }

    });
});


</script>

