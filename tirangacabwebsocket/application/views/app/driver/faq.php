 <?php 
include('include/header.php');
include('include/sidebar.php');
?><style>
   a.btn.rounded-3.fs-14.bg-primary-color.text-white{
      color: black !important;

   }
   .faq-section {
      max-width: 700px;
      margin: 0 auto;
    }

    .faq-title {
      text-align: center;
      font-size: 30px;
      margin-bottom: 30px;
    }

    .faq-item {
      background: #fff;
      margin-bottom: 10px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.05);
      overflow: hidden;
    }

    .faq-question {
      padding: 15px 20px;
      cursor: pointer;
      font-weight: bold;
      position: relative;
    }

    .faq-question::after {
      content: '+';
      position: absolute;
      right: 20px;
      font-size: 20px;
      transition: transform 0.3s;
    }

    .faq-item.active .faq-question::after {
      content: '-';
    }

    .faq-answer {
      padding: 0 20px 15px;
      display: none;
      color: #555;
      line-height: 1.5;
    }

    .faq-item.active .faq-answer {
      display: block;
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
               <i class="bi bi-question-circle me-2 app-header-icon"></i>
               <span class="app-header-title">FAQ's</span>
            </div>
         </div>
         
      </div>
      <!-- Main Content Area -->
      <div class="content-area">
         <div class="page-content">
            
            <div class="faq-section">
               

                <div class="faq-item">
                  <div class="faq-question">What is your refund policy?</div>
                  <div class="faq-answer">
                    We offer a full refund if cancellation is made at least 24 hours before the trip.
                  </div>
                </div>

                <div class="faq-item">
                  <div class="faq-question">Can I change my booking date?</div>
                  <div class="faq-answer">
                    Yes, you can reschedule your trip at least 12 hours before departure.
                  </div>
                </div>

                <div class="faq-item">
                  <div class="faq-question">Are pets allowed in the cab?</div>
                  <div class="faq-answer">
                    Yes, pets are allowed but a surcharge of ₹840 applies.
                  </div>
                </div>

                <div class="faq-item">
                  <div class="faq-question">Do you provide luggage space?</div>
                  <div class="faq-answer">
                    Yes, you can add luggage space as an add-on for ₹525.
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
    const faqItems = document.querySelectorAll('.faq-item');

    faqItems.forEach(item => {
      item.querySelector('.faq-question').addEventListener('click', () => {
        item.classList.toggle('active');
        // Close others
        faqItems.forEach(i => {
          if (i !== item) i.classList.remove('active');
        });
      });
    });
  </script>
