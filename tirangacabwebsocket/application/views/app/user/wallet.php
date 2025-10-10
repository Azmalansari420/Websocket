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
               <i class="bi bi-wallet2 me-2 app-header-icon"></i>
               <span class="app-header-title">Wallet</span>
            </div>
         </div>         
      </div>
      <!-- Content Container -->
      <div class="p-3">
         <!-- Booking Progress -->
        
        
         <!-- Passenger Details Form -->
         <div class="passenger-details mb-4">
                        
            <div class="mb-2">
               <label for="passPhone" class="form-label">Enter Amount</label>
               <input type="tel" class="form-control" id="bet-amount" placeholder="Enter  Amount" value="50">
            </div>
         </div>
         <div class="col-12 mt-3">
               <div class="row justify-content-center">
                  <span class="amt-block setText select-amount selected" data-amt="50">50</span>
                  <span class="amt-block setText select-amount" data-amt="100">100</span>
                  <span class="amt-block setText select-amount" data-amt="200">200</span>
                  <span class="amt-block setText select-amount" data-amt="500">500</span>
                  <span class="amt-block setText select-amount" data-amt="1000">1000</span>
                  
               </div>
            </div>

            <div class="col-12 mt-3">
               <a href="#!" class="btn btn-lg btn-thin btn-primary w-100" style="padding: 12px 30px;">Add Amount</a>
            </div>   
      
         <!-- Booking Conditions -->
         <div class="history-table-container">
           <h3>Wallet History</h3>
           <table class="history-table">
             <thead>
               <tr>
                 <th>S.no</th>
                 <th>Date</th>
                 <th>Amount</th>
                 <th>Status</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td>1</td>
                 <td>18 June 2025</td>
                 <td>₹500</td>
                 <td><span class="status success">Success</span></td>
               </tr>
               <tr>
                 <td>2</td>
                 <td>17 June 2025</td>
                 <td>₹1000</td>
                 <td><span class="status pending">Pending</span></td>
               </tr>
               <tr>
                 <td>3</td>
                 <td>15 June 2025</td>
                 <td>₹200</td>
                 <td><span class="status failed">Failed</span></td>
               </tr>
             </tbody>
           </table>
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