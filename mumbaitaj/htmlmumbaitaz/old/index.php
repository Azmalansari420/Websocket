<?php include('include/allcss.php'); ?>
<div class="page-wrapper">
    
	<!-- Preloader -->
	<!-- <div id="preloader">
		<div class="loader">
			<div class="spinner-border text-primary" role="status">
				<span class="visually-hidden">Loading...</span>
			</div>
		</div>
	</div> -->
    <!-- Preloader end-->
	
	<!-- Header -->
		<header class="header header-fixed style-3">
			<div class="header-content">
				<div class="left-content">
					<img class="rounded-xl" src="assets/mumbai.jpg" alt="" width="90px">
				</div>

				<div class="mid-content text-white text-uppercase">Mumbai Taj</div>

				<div class="right-content d-flex align-items-center gap-3">
					<a href="javascript:void(0);" class="icon font-20">
						<i class="icon feather icon-rotate-cw text-white"></i>
					</a>
				</div>
			</div>
			<div class="topbar pt-2 mb-1 d-flex justify-content-around">
				<a href="javascript:void(0);" class="category-tag tag-lg active1">DUBAI</a>
				<a href="javascript:void(0);" class="category-tag tag-lg">DELHI</a>	
			</div>
		</header>
	<!-- Header -->
	
	<!-- Sidebar -->
    <?php include('include/sidebar.php'); ?>
    <!-- Sidebar End -->
	
	<!-- Main Content Start -->
	<main class="page-content space-top p-b60" >
		<div class="container pt-0">
			

			<div class="my-box">
				<div class="flag-section d-flex justify-content-between">
					<img src="assets/india-flag-icon.svg" class="flag-img" >
					<p class="text-white" style="margin-top: 54px;font-size: 11px;"><?=date('d/m/Y') ?><br><?=date('H:i A') ?></p>
				</div>
			</div>

			<div class="slot-box text-center position-relative">
			    <img src="assets/slot.png" style="height:55vh;">

			    <!-- Overlay for top 6 slots -->
			    <div class="top-slots-overlay position-absolute d-flex justify-content-center my-gap">
			        <div class="slot" id="slot1">0</div>
			        <div class="slot" id="slot2">0</div>
			        <div class="slot" id="slot3">0</div>
			        <div class="slot" id="slot4">0</div>
			        <div class="slot" id="slot5">0</div>
			        <div class="slot" id="slot6">0</div>
			    </div>

			    <!-- Overlay for bottom 2 slots -->
			    <div class="bottom-slots-overlay position-absolute d-flex justify-content-center gap-3">
			        <div class="slot-bottom" id="bottom1">5</div>
			        <div class="slot-bottom" id="bottom2">3</div>
			    </div>
			</div>


			<div class="small-box mt-4">
				<div class="row">
					<div class="col-4">
						<div class="box-color">
							<p>87<br>01:00 PM</p>
						</div>
					</div>
					<div class="col-4">
						<div class="box-color">
							<p>87<br>01:00 PM</p>
						</div>
					</div>
					<div class="col-4">
						<div class="box-color">
							<p>87<br>01:00 PM</p>
						</div>
					</div>
					<div class="col-4">
						<div class="box-color">
							<p>87<br>01:00 PM</p>
						</div>
					</div>
					<div class="col-4">
						<div class="box-color">
							<p>87<br>01:00 PM</p>
						</div>
					</div>
					<div class="col-4">
						<div class="box-color">
							<p>87<br>01:00 PM</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</main>
	<!-- Main Content End -->
	
	<!-- Menubar -->
	<?php include('include/menubar.php'); ?>
	<?php include('include/allscript.php'); ?>
	<!-- Menubar -->


<script>

function randomDigit() {
    return Math.floor(Math.random() * 10); // 0-9
}

function startSlotAnimation() {
    let slots = [];
    for (let i = 1; i <= 6; i++) {
        slots.push(document.getElementById('slot' + i));
    }
    let bottoms = [];
    for (let i = 1; i <= 2; i++) {
        bottoms.push(document.getElementById('bottom' + i));
    }

    // Animate top slots
    slots.forEach((slot, index) => {
        let counter = 0;
        let interval = setInterval(() => {
            slot.innerText = randomDigit();
            counter++;
            if (counter > 20 + index * 10) {
                clearInterval(interval);
            }
        }, 100);
    });

    // Animate bottom slots and finally set a single digit each
    bottoms.forEach((slot, index) => {
        let counter = 0;
        let interval = setInterval(() => {
            slot.innerText = randomDigit();
            counter++;
            if (counter > 40 + index * 20) {
                clearInterval(interval);
                // Final random single digit 0-9
                let finalNumber = randomDigit();
                slot.innerText = finalNumber;
            }
        }, 80);
    });
}

// Start animation when page loads
window.onload = () => {
    startSlotAnimation();
};
</script>

</script>
