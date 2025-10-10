/* 
  Template Name: BusGo - Bus Booking HTML Mobile App Template
  Author: Askbootstrap
  Author URI: https://themeforest.net/user/askbootstrap
  Version: 0.1
*/

/*
1️⃣ Sidebar Toggle Script
2️⃣ Payment Form Toggle Script
3️⃣ Reset Password Script
4️⃣ FAQ Toggle Script
5️⃣ Seat Selection Script
6️⃣ Toggle Password Visibility Script
7️⃣ Form Handler Script
*/

/* ============================
   1️⃣ Sidebar Toggle Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const menuBtn = document.getElementById('menuBtn');
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('overlay');

    if (menuBtn && sidebar && overlay) {
        // Toggle sidebar visibility
        menuBtn.addEventListener('click', function () {
            sidebar.classList.toggle('active');
            overlay.classList.toggle('active');
            document.body.style.overflow = sidebar.classList.contains('active') ? 'hidden' : '';
        });

        // Close sidebar when clicking outside of it (overlay)
        overlay.addEventListener('click', function () {
            sidebar.classList.remove('active');
            overlay.classList.remove('active');
            document.body.style.overflow = '';
        });

        // Close sidebar when pressing the Escape key
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Escape' && sidebar.classList.contains('active')) {
                sidebar.classList.remove('active');
                overlay.classList.remove('active');
                document.body.style.overflow = '';
            }
        });

        // Highlight active menu item based on the current page
        const currentPage = window.location.pathname.split('https://askbootstrap.com/').pop();
        const menuItems = document.querySelectorAll('.sidebar-menu-item, .bottom-nav .nav-item');

        menuItems.forEach(item => {
            const itemHref = item.getAttribute('href');
            if (itemHref === currentPage || (currentPage === '' && itemHref === 'index.html')) {
                item.classList.add('active');
            }
        });
    }
});

/* ============================
   2️⃣ Payment Form Toggle Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const newCardRadio = document.getElementById('newCard');
    const newCardForm = document.getElementById('newCardForm');
    const paymentMethods = document.getElementsByName('paymentMethod');

    if (newCardRadio && newCardForm && paymentMethods.length > 0) {
        // Show/hide the new card form based on selected payment method
        paymentMethods.forEach(method => {
            method.addEventListener('change', function () {
                newCardForm.classList.toggle('d-block', newCardRadio.checked);
                newCardForm.classList.toggle('d-none', !newCardRadio.checked);
            });
        });
    }
});

/* ============================
   3️⃣ Reset Password Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const resetBtn = document.getElementById('resetBtn');
    const resetInstructions = document.getElementById('resetInstructions');
    const resendBtn = document.getElementById('resendBtn');
    const form = document.querySelector('.auth-form > div:not(.reset-instructions):not(:last-child)');

    if (resetBtn && resetInstructions && resendBtn && form) {
        // Handle reset button click
        resetBtn.addEventListener('click', function () {
            form.classList.add('d-none');
            resetBtn.classList.add('d-none');
            resetInstructions.classList.remove('d-none');
        });

        // Simulate sending reset email
        resendBtn.addEventListener('click', function () {
            resendBtn.innerHTML = '<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span> Sending...';
            resendBtn.disabled = true;

            setTimeout(function () {
                resendBtn.innerHTML = '<i class="bi bi-check-circle me-2"></i> Email Sent';
                setTimeout(function () {
                    resendBtn.innerHTML = '<i class="bi bi-envelope me-2"></i> Resend Email';
                    resendBtn.disabled = false;
                }, 3000);
            }, 2000);
        });
    }
});

/* ============================
   4️⃣ FAQ Toggle Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const faqQuestions = document.querySelectorAll('.faq-question');

    if (faqQuestions.length > 0) {
        faqQuestions.forEach(question => {
            question.addEventListener('click', function () {
                const answer = this.nextElementSibling;
                const icon = this.querySelector('i');

                answer.classList.toggle('show');
                icon.classList.toggle('bi-dash');
                icon.classList.toggle('bi-plus');
            });
        });
    }
});

/* ============================
   5️⃣ Seat Selection Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const availableSeats = document.querySelectorAll('.seat.available');
    const removeButtons = document.querySelectorAll('.remove-seat');

    if (availableSeats.length > 0) {
        // Toggle seat selection
        availableSeats.forEach(seat => {
            seat.addEventListener('click', function () {
                this.classList.toggle('selected');
                this.classList.toggle('available');
                updateTotalPrice();
            });
        });

        // Remove selected seat
        removeButtons.forEach(button => {
            button.addEventListener('click', function () {
                const seatItem = this.closest('.selected-seat-item');
                seatItem?.remove();
                updateTotalPrice();
            });
        });

        // Update total price based on selected seats
        function updateTotalPrice() {
            const selectedSeats = document.querySelectorAll('.selected-seat-item');
            const totalPriceElement = document.querySelector('.bottom-fixed-bar .fw-bold');
            const seatCountElement = document.querySelector('.bottom-fixed-bar .text-muted.small');

            if (selectedSeats && totalPriceElement && seatCountElement) {
                const totalPrice = selectedSeats.length * 45; // $45 per seat
                totalPriceElement.textContent = `$${totalPrice.toFixed(2)}`;
                seatCountElement.textContent = `${selectedSeats.length} seats selected`;
            }
        }
    }
});

/* ============================
   6️⃣ Toggle Password Visibility Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const togglePassword = document.getElementById('togglePassword');
    const password = document.getElementById('password');

    if (togglePassword && password) {
        togglePassword.addEventListener('click', function () {
            const type = password.type === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);

            const icon = this.querySelector('i');
            icon.classList.toggle('bi-eye');
            icon.classList.toggle('bi-eye-slash');
        });
    }
});

/* ============================
   7️⃣ Form Handler Script
============================= */
document.addEventListener('DOMContentLoaded', function () {
    const bookForOthersCheckbox = document.getElementById('bookForOthers');
    const emergencyContactSection = document.getElementById('emergencyContact');

    if (bookForOthersCheckbox && emergencyContactSection) {
        bookForOthersCheckbox.addEventListener('change', function () {
            emergencyContactSection.classList.toggle('d-block', this.checked);
            emergencyContactSection.classList.toggle('d-none', !this.checked);
        });
    }
});