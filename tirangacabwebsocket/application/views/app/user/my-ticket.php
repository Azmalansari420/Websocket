 <?php 
$id = $this->input->get('id');
$bookings = $this->db->get_where('bookings', array('id' => $id))->result_object();
if(!empty($bookings))
    {
      $bookings = $bookings[0];
      $drivername = get_userdata(@$bookings->driver_id);
    } 



include('include/header.php');
include('include/sidebar.php');
?>



<style>
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




 .invoice {
      background: #fff;
      border-radius: 8px;
      padding: 16px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }
    .header {
      display: flex;
      justify-content: space-between;
      align-items: flex-start;
      margin-bottom: 16px;
    }
    .rapido-logo {
      width: 80px;
    }
    .title {
      font-weight: bold;
      font-size: 16px;
      margin-bottom: 10px;
    }
    .info-grid {
      display: grid;
      grid-template-columns: 1fr 2fr;
      row-gap: 8px;
      font-size: 14px;
    }
    .label {
      font-weight: bold;
    }
    .price-section {
      text-align: center;
      margin: 20px 0;
    }
    .price-section h3 {
      margin: 0;
      font-size: 16px;
      font-weight: normal;
    }
    .price {
      font-size: 28px;
      font-weight: bold;
      color: #000;
    }
    .address-section {
      margin-top: 15px;
      font-size: 14px;
    }
    .address {
      display: flex;
      align-items: flex-start;
      gap: 8px;
      margin-bottom: 10px;
    }
    .dot {
      font-size: 16px;
    }
    .note {
      font-size: 11px;
      color: #555;
      margin-top: 15px;
    }
    .imagelogo{
   background: black;
    padding: 15px;
    border-radius: 22px;
        width: 100px;
}
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>


      <div class="overlay" id="overlay"></div>
      <!-- App Header -->
      <div class="app-header d-flex justify-content-between align-items-center">
         <div class="d-flex align-items-center">
            <button id="menuBtn" class="btn menu-btn">
            <i class="bi bi-list menu-icon"></i>
            </button>
            <div class="d-flex align-items-center">
               <i class="bi bi-ticket-perforated me-2 app-header-icon"></i>
               <span class="app-header-title">Bookings Details</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">

            <div class="invoice">
                <div class="header">
                  <!-- <div class="title">Booking History</div> -->
                  <div class="app-logo mb-3 mt-3">
                     <img src="<?=base_url() ?>media/uploads/site_setting/<?=$sitesetting[0]->logo ?>" class="imagelogo">
                  </div>
                </div>

                <div class="info-grid">
                  <div class="label">Customer Name</div><div><?=@$bookings->username ?></div>
                  <div class="label">Booking ID</div><div><?=@$bookings->request_id ?></div>
                  <div class="label">Driver name</div><div><?=@$drivername[0]->name ?></div>
                  <div class="label">Vehicle Number</div><div><?=@$bookings->car_number ?></div>
                  <!-- <div class="label">Mode of Vehicle</div><div>Car</div> -->
                  <div class="label">Booking Create</div><div><?=date_time_formet($bookings->created_at) ?></div>
                  <div class="label">Booking Complete</div><div><?=date_time_formet($bookings->completed_at) ?></div>
                </div>

                <div class="price-section">
                  <h3>Selected Price</h3>
                  <div class="price"><?=currency_simble($bookings->amount) ?></div>
                </div>

                <div class="address-section">
                  <div class="address">
                    <div class="dot">🟢</div>
                    <div><?=@$bookings->from_location ?></div>
                  </div>
                  <div class="address">
                    <div class="dot">🔴</div>
                    <div><?=@$bookings->to_location ?></div>
                  </div>
                </div>

                <div class="note">
                  This document is issued on request by the passenger. Rapido does not collect any fee/commission from passengers and shall not issue tax invoices to the passengers under this segment. The document may be used for all official / reimbursement purposes.<br><br>
                  *Selected Price refers to the initial price decided between User and Drivers from the estimated price range
                </div>
              </div>   

             <div style="text-align: center;">
               <button class="btn btn-primary" id="downloadBtn">Download PDF</button>
             </div>
      
            
            
         </div>
      </div>
        
      <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>


<script>
document.getElementById("downloadBtn").addEventListener("click", () => {
    const element = document.querySelector(".invoice"); // jis div ko pdf banana hai
    var opt = {
      margin:       0.5,
      filename:     '<?=$bookings->request_id ?>.pdf',
      image:        { type: 'jpeg', quality: 0.98 },
      html2canvas:  { scale: 2 },
      jsPDF:        { unit: 'in', format: 'a4', orientation: 'portrait' }
    };
    html2pdf().set(opt).from(element).save();
});
</script>

