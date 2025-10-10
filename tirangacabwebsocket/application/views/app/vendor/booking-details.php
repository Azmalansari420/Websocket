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
                  <div class="label">Customer Name</div><div>Sumit Kumar</div>
                  <div class="label">Ride ID</div><div>RD17542619870161282</div>
                  <div class="label">Driver name</div><div>Kallu Tiwari</div>
                  <div class="label">Vehicle Number</div><div>HR58D3072</div>
                  <div class="label">Mode of Vehicle</div><div>Car</div>
                  <div class="label">Time of Ride</div><div>Aug 4th 2025, 4:38 AM</div>
                </div>

                <div class="price-section">
                  <h3>Selected Price</h3>
                  <div class="price">₹ 336</div>
                </div>

                <div class="address-section">
                  <div class="address">
                    <div class="dot">🟢</div>
                    <div>26b, behind Gokhale Marg, Inter State Bus Terminal, Kashmere Gate, Delhi, 110054, India</div>
                  </div>
                  <div class="address">
                    <div class="dot">🔴</div>
                    <div>587, Nawada Rd, Phase 4, Nawada Majra Village, Nawada, Delhi, 110059, India</div>
                  </div>
                </div>

                <div class="note">
                  This document is issued on request by the passenger. Rapido does not collect any fee/commission from passengers and shall not issue tax invoices to the passengers under this segment. The document may be used for all official / reimbursement purposes.<br><br>
                  *Selected Price refers to the initial price decided between User and Drivers from the estimated price range
                </div>
              </div>         
            
            
         </div>
      </div>
        
      <?php 
include('include/bottom-menu.php');
include('include/footer.php');
?>

