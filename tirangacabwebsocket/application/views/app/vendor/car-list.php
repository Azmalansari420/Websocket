 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>
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


.amt-block {
    padding: 8px 14px;
    margin: 5px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-weight: 600;
    background: linear-gradient(90deg, #0057B7, #4D90FE);
    color:white;
    transition: all 0.3s ease;
    min-width: 50px;
    text-align: center;
}

.amt-block:hover {
   background-color: #ffe082;
   border-color: #ffca28;
}

.amt-block.selected {
        background: #000000 !important;
    color: #fff;
    border-color: #000000;
}

.select-amount {
   flex: 1;
   max-width: 100px;
}


.history-table-container {
      margin: 15px auto;
    padding: 2px;
    max-width: 800px;
    background: #fff;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
    border-radius: 10px;
}

.history-table-container h3 {
  text-align: center;
  margin-bottom: 20px;
  color: #333;
}

.history-table {
  width: 100%;
  border-collapse: collapse;
  font-family: Arial, sans-serif;
}

.history-table thead {
  background: #0057B7;
  color: #fff;
}

.history-table th, .history-table td {
  padding: 10px 5px;
  text-align: center;
  border-bottom: 1px solid #eee;
}

.history-table tr:hover {
  background-color: #f9f9f9;
}

.status {
  padding: 4px 10px;
  border-radius: 20px;
  font-size: 12px;
  font-weight: bold;
}

.status.success {
  background-color: #d4edda;
  color: #155724;
}

.status.pending {
  background-color: #fff3cd;
  color: #856404;
}

.status.failed {
  background-color: #f8d7da;
  color: #721c24;
}



.car-list {
  display: flex;
  flex-direction: column;
  gap: 16px;
  padding: 15px;
}

.car-card {
  display: block;
  background: #fff;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 3px 10px rgba(0,0,0,0.1);
  text-decoration: none;
  color: #333;
  transition: transform 0.2s ease;
}

.car-card:hover {
  transform: translateY(-3px);
}

.car-card-img {
  position: relative;
  width: 100%;
  height: 180px; /* fixed height for mobile look */
  overflow: hidden;
}

.car-card-img img {
  width: 100%;
  height: 100%;
  object-fit: cover; /* ✅ image will fully cover */
}

.car-status {
  position: absolute;
  top: 12px;
  left: 12px;
  padding: 4px 12px;
  border-radius: 20px;
  font-size: 13px;
  font-weight: bold;
  color: #fff;
}

.car-status.approved {
  background: #28a745;
}
.car-status.rejected {
  background: #dc3545;
}

.car-card-body {
  padding: 12px 14px;
}

.car-number {
  font-size: 16px;
  font-weight: 700;
  margin: 0 0 4px;
}

.car-details {
  font-size: 13px;
  color: #666;
  margin: 0 0 8px;
}

.car-price {
  font-size: 15px;
  font-weight: bold;
  color: #0057B7;
}

.reject-msg {
  margin-top: 6px;
  font-size: 13px;
  color: #d32f2f;
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
               <i class="bi bi-car-front-fill me-2 app-header-icon"></i>
               <span class="app-header-title">Car List</span>
            </div>

         </div>         
            <a href="car-add.php" class="btn btn-sm text-white bg-black">Add New</a>
      </div>
      <!-- Content Container -->
      <div class="bus-list" id="bestprice" >


            <div class="car-list">
              <?php
              $this->db->order_by('id desc');
              $vendor_cars = $this->db->get_where('vendor_cars', ['vendor_id'=>$full_detail->id])->result_object();

              foreach($vendor_cars as $data){
                  $vendor_cars_document = $this->db->get_where('vendor_cars_document',['vendor_cars_id'=>$data->id])->result_object();
                  if(!empty($vendor_cars_document)){
                      $getimage = json_decode($vendor_cars_document[0]->vehicle_pics);
                  }
              ?>
              <a href="car-update.php?id=<?= $data->id ?>" class="car-card">
                <div class="car-card-img">
                  <img src="<?= base_url() ?>media/uploads/<?= @$getimage[0] ?>" alt="Car Image">
                  <span class="car-status <?= $data->status==1 ? 'approved' : 'rejected' ?>">
                    <?= car_status($data->status) ?>
                  </span>
                </div>
                <div class="car-card-body">
                  <h4 class="car-number"><?= $data->car_number ?></h4>
                  <p class="car-details"><strong><?= car_name($data->car_name_id) ?></strong></p>
                  <?php if(!empty($data->car_perkm_price)){ ?>
                    <div class="car-price">₹ <?= $data->car_perkm_price ?> / KM</div>
                  <?php } ?>
                  <?php if(!empty($data->reject_msg)){ ?>
                    <p class="reject-msg">❌ <?= $data->reject_msg ?></p>
                  <?php } ?>
                </div>
              </a>
              <?php } ?>
            </div>

            



            
         </div>


            
    <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

<script>
   
    $(".select-amount").click(function(event) {
        $(".select-amount").removeClass("selected");
        $(this).addClass("selected");
        final_amount = amount = $(this).data('amt');
        $('#bet-amount').val(amount);
    }); 
</script>