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

a.btn.rounded-3.fs-14.bg-primary-color.text-dark{
      color: black !important;
      font-size: 12px;

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
          margin-right: 5px;
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
               <span class="app-header-title">My Booking</span>
            </div>
         </div>         
      </div>
      <!-- Content Container -->
      <div class="p">
         <!-- Booking Progress -->
              
         <!-- Booking Conditions -->
         <div class="history-table-container">


           <div class="list-item">
              <div class="d-flex justify-content-center align-items-start mb-2">
                 <div>
                    <div class="d-flex align-items-center">
                       <span class="fw-semibold text-primary-color">TATA, XUV 500 [DLDF123654]</span>
                    </div>
                 </div>
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
              <div class="d-flex justify-content-between align-items-center">
                 <div>
                    <div class="fw-semibold">Driver:- Amit Kumar</div>
                    <div class="fw-semibold">Mobile No:- 987879879879</div>
                    <div class="small text-muted">Apr 15, 2025</div>
                 </div>
                 <a href="booking-details.php" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                 View Booking
                 </a>
              </div>                  
            </div>

           <div class="list-item">
              <div class="d-flex justify-content-center align-items-start mb-2">
                 <div>
                    <div class="d-flex align-items-center">
                       <span class="fw-semibold text-primary-color">TATA, XUV 500 [DLDF123654]</span>
                    </div>
                 </div>
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
              <div class="d-flex justify-content-between align-items-center">
                 <div>
                    <div class="fw-semibold">Driver:- Amit Kumar</div>
                    <div class="fw-semibold">Mobile No:- 987879879879</div>
                    <div class="small text-muted">Apr 15, 2025</div>
                 </div>
                 <a href="booking-details.php" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                 View Booking
                 </a>
              </div>                  
            </div>

           <div class="list-item">
              <div class="d-flex justify-content-center align-items-start mb-2">
                 <div>
                    <div class="d-flex align-items-center">
                       <span class="fw-semibold text-primary-color">TATA, XUV 500 [DLDF123654]</span>
                    </div>
                 </div>
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
              <div class="d-flex justify-content-between align-items-center">
                 <div>
                    <div class="fw-semibold">Driver:- Amit Kumar</div>
                    <div class="fw-semibold">Mobile No:- 987879879879</div>
                    <div class="small text-muted">Apr 15, 2025</div>
                 </div>
                 <a href="booking-details.php" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                 View Booking
                 </a>
              </div>                  
            </div>

           <div class="list-item">
              <div class="d-flex justify-content-center align-items-start mb-2">
                 <div>
                    <div class="d-flex align-items-center">
                       <span class="fw-semibold text-primary-color">TATA, XUV 500 [DLDF123654]</span>
                    </div>
                 </div>
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
              <div class="d-flex justify-content-between align-items-center">
                 <div>
                    <div class="fw-semibold">Driver:- Amit Kumar</div>
                    <div class="fw-semibold">Mobile No:- 987879879879</div>
                    <div class="small text-muted">Apr 15, 2025</div>
                 </div>
                 <a href="booking-details.php" class="btn btn-sm rounded-3 fs-14 bg-primary-color text-dark">
                 View Booking
                 </a>
              </div>                  
            </div>


            
         </div>

         <!-- Promo Code -->
         
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