
<?php include('headercss.php'); ?>

<body style="background-image: url(<?=base_url() ?>assets/bg-img.jpg);
    background-size: cover;
    background-position: right;">

    <?php include('top-bra.php'); ?>

<audio id="admusic" controls style="display:none;" preload='none'>
    <source src="<?=base_url() ?>sound/slot-sound.mp3" type='audio/mp3'>
</audio>

 

    <section>
        <div class="container">
            <audio id="admusic" controls style="display:none;" preload='none'>
                <source type='audio/mp3'>
            </audio>
            <button id="btnPlay" hidden>Play</button>
            <button id="btnStop" hidden>stop</button>
            <div class="row">
                <div class="col-md-5">
                </div>
                <div class="col-md-4">
                </div>

                <div class="col-md-3">
                    <div class="liveLight text-right " style="align-items:center; display:flex;">
                        <p class="buttonRedSm GlowRedSm" style="margin:0px"></p>&nbsp;<span style="color:#fff;font-size:15px;"> Live </span>
                    </div>
                    <div class="hidden-lg hidden-md">
                        <div class="row">
                            <div class="col-md-3 col-xs-4">
                                <span style="color: #fff;" class="clockIndia spnTimeIndia">  </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-2">

                </div>
                <div class="col-xs-8">
                    <div class="ImgCenter">
                        <img src="<?=base_url() ?>assets/slot.png" style="margin-top:10%;" class="img-responsive">
                        <div class="centeredTop1Green">
                            <div class="WhiteBoxLeftGreen">
                                <p style="margin:0;border-radius: 50%;padding: 8px;" id="glowGreen" class="buttonGreen"></p>
                            </div>
                        </div>
                        <div class="centeredTop1Red">
                            <div class="WhiteBoxLeftRed">
                                <p style="margin:0;border-radius: 50%;padding: 8px;" id="glowRed" class="buttonRed GlowRed "></p>
                            </div>
                        </div>
                        <div class="centeredTop1">
                            <div class="WhiteBoxLeft">                                
                                <img id="imgTop1" style="height:30px" src="<?=base_url() ?>image/Sm-Number/3.png" />
                            </div>
                        </div>
                        <div class="centeredTop2">
                            <div class="WhiteBoxLeft">
                                <img id="imgTop2" style="height:30px" src="<?=base_url() ?>image/Sm-Number/4.png" />
                            </div>
                        </div>
                        <div class="centeredTop3">
                            <div class="WhiteBoxLeft">
                                
                                <img id="imgTop3" style="height:30px" src="<?=base_url() ?>image/Sm-Number/5.png" />
                            </div>
                        </div>
                        <div class="centeredTop4">
                            <div class="WhiteBoxLeft">
                                <img id="imgTop4" style="height:30px" src="<?=base_url() ?>image/Sm-Number/1.png" />
                            </div>
                        </div>
                        <div class="centeredTop5">
                            <div class="WhiteBoxLeft">
                                
                                <img id="imgTop5" style="height:30px" src="<?=base_url() ?>image/Sm-Number/7.png" />
                            </div>
                        </div>
                        <div class="centeredTop6">
                            <div class="WhiteBoxLeft">
                                <img id="imgTop6" style="height:30px" src="<?=base_url() ?>image/Sm-Number/9.png" />
                            </div>
                        </div>



                        <div class="centeredleft">
                            <div class="WhiteBoxLeft">
                                
                                <img id="imgShowNumberLeft" style="height:40px" src="<?=base_url() ?>image/Lg-Number/8.png" />
                            </div>
                        </div>
                        <div class="centeredRight">
                            <div class="WhiteBoxRight">
                                <img id="imgShowNumberRight" style="height:40px" src="<?=base_url() ?>image/Lg-Number/8.png" />
                            </div>
                        </div>



                    </div>
                </div>

                <?php
                  $number = $this->db->get_where("game_times",array('game_id'=>59))->result_object();
                  if(!empty($number))
                  {
                    foreach($number as $key => $data)
                    {
                        $this->db->where('DATE(create_on)', date('Y-m-d')); 
                        $number = $this->db->get_where('number',array('game_id'=>$data->game_id,'game_time_id'=>$data->game_time_id))->result_object();
                  ?>
                <div class="col-xs-4">
                    <div class="extrabtn" data-gametimeid="<?= $data->game_time_id ?>">
                        <p style="margin:0"><?=@$number[0]->number ?? '-' ; ?></p>
                        <p><?=date('h:i A',strtotime($data->gametime)) ?></p>
                    </div>
                </div>
                <?php } } ?>
            </div>

        </div>

        <div class="bottom-footer">
            <button >See Result</button>
        </div>

    </section>


<?php include('footerscript.php'); ?>
<style>
    /* Modal Background */
.slot-modal {
  display: none; /* Hidden by default */
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.6);
  transition: background-color 0.5s ease;
}

/* Modal Content Box */
.slot-modal-content {
  background: linear-gradient(145deg, #fff, #f0f0f0);
  margin: 64% auto;
  padding: 25px 20px;
  border-radius: 15px;
  width: 300px;
  text-align: center;
  box-shadow: 0 10px 30px rgba(0,0,0,0.3);
  position: relative;
  transform: translateY(-100px);
  opacity: 0;
  transition: all 0.5s ease;
}

/* Show Modal (trigger animation via JS by adding class) */
.slot-modal.show {
  display: block;
}

.slot-modal.show .slot-modal-content {
  transform: translateY(0);
  opacity: 1;
  animation: popIn 0.5s forwards;
}

/* Pop-in Bounce */
@keyframes popIn {
  0% { transform: scale(0); opacity: 0; }
  60% { transform: scale(1.2); opacity: 1; }
  80% { transform: scale(0.95); }
  100% { transform: scale(1); }
}

/* Close Button */
.slot-close {
  position: absolute;
  top: 10px;
  right: 15px;
  font-size: 28px;
  font-weight: bold;
  color: #333;
  cursor: pointer;
  transition: color 0.3s;
}

.slot-close:hover {
  color: #e74c3c;
}

/* Title */
.slot-modal-content h2 {
  margin-top: 10px;
  font-size: 22px;
  color: #27ae60;
  letter-spacing: 1px;
}

/* Number Display */
#modalNumber {
  font-size: 48px;
  font-weight: bold;
  color: #3498db;
  margin: 15px 0 0 0;
  animation: numberPop 0.6s ease;
}

@keyframes numberPop {
  0% { transform: scale(0); opacity: 0; }
  60% { transform: scale(1.3); opacity: 1; }
  80% { transform: scale(0.95); }
  100% { transform: scale(1); }
}

</style>

<div id="slotModal" class="slot-modal">
  <div class="slot-modal-content">
    <span class="slot-close">&times;</span>
    <h2>Number Opened!</h2>
    <p id="modalNumber">00</p>
  </div>
</div>


<script>
 let ws = new WebSocket("<?=socketURL?>");

// let ws = new WebSocket("ws://your-domain.com:8080");

ws.onopen = () => {
  console.log("Connected to WebSocket");
};

ws.onmessage = (event) => {
  if (event.data instanceof Blob) {
    event.data.text().then((text) => {
      handleMessage(text);
    });
  } else {
    handleMessage(event.data);
  }
};






// Get modal elements
const slotModal = document.getElementById("slotModal");
const modalNumber = document.getElementById("modalNumber");
const spanClose = document.querySelector(".slot-close");

// Function to show modal with number
function showModal(number) {
  modalNumber.textContent = number;
  slotModal.classList.add('show'); // animation triggers when class added
}

// Close modal on X click
spanClose.onclick = () => slotModal.classList.remove('show');
window.onclick = (event) => {
  if (event.target == slotModal) slotModal.classList.remove('show');
};















let interval;
const numbers = [1,2,3,4,5,6,7,8,9];
let spinIndex = 0;

function handleMessage(message) {
  try {
    let data = JSON.parse(message);
    console.log("Received:", data);

    // Only run if game_id is 59
    if (data.game_id == '59') {
      // 1️⃣ Update the number in the list
      const allGameTimeDivs = document.querySelectorAll(".extrabtn");
      allGameTimeDivs.forEach(div => {
        const gameTimeIdAttr = div.getAttribute("data-gametimeid");
        if (gameTimeIdAttr == data.game_time_id) {
          // Update number
          const pNumber = div.querySelector("p:first-child");
          if (pNumber) pNumber.textContent = data.number;
        }
      });

      // 2️⃣ Animate slot machine
      startSlot(data.randno); 
      setTimeout(() => stopSlot(data.number), 3000); // show final big number
    }
  } catch (e) {
    console.error("Invalid JSON:", message);
  }
}


function startSlot(randno) {

     // 🔔 App ko message bhejna so that React Native slot-sound play kare
  if (window.ReactNativeWebView) {
    window.ReactNativeWebView.postMessage(JSON.stringify({ type: 'slot_start' }));
  }
  
  // Play slot machine sound
  let sound = document.getElementById("admusic");
  if (sound) {
    sound.currentTime = 0;
    sound.play().catch(e => console.log("Audio play blocked", e));
  }

  clearInterval(interval);
  spinIndex = 0;
  const topDigits = randno.toString().padStart(6, "0").split("");

  interval = setInterval(() => {
    // Animate top slots
    for (let i = 0; i < 6; i++) {
      let displayDigit = numbers[Math.floor(Math.random() * numbers.length)];
      if (spinIndex > 20) displayDigit = topDigits[i]; // lock on randno at end
      document.getElementById("imgTop" + (i+1)).src = "<?=base_url()?>image/Sm-Number/" + displayDigit + ".png";
    }

    // Animate big slots with random numbers
    let randLeft = numbers[Math.floor(Math.random() * numbers.length)];
    let randRight = numbers[Math.floor(Math.random() * numbers.length)];
    document.getElementById("imgShowNumberLeft").src = "<?=base_url()?>image/Lg-Number/" + randLeft + ".png";
    document.getElementById("imgShowNumberRight").src = "<?=base_url()?>image/Lg-Number/" + randRight + ".png";

    spinIndex++;
    if (spinIndex > 25) clearInterval(interval); // stop spinning after ~2.5s
  }, 100);
}

function stopSlot(number) {
  clearInterval(interval);

  let digits = number.toString().padStart(2, "0").split("");
  let left = digits[0];
  let right = digits[1];

  // Update big slots with final number
  document.getElementById("imgShowNumberLeft").src = "<?=base_url()?>image/Lg-Number/" + left + ".png";
  document.getElementById("imgShowNumberRight").src = "<?=base_url()?>image/Lg-Number/" + right + ".png";

  // Keep small slots unchanged (show randno)
  localStorage.setItem("lastResult", number);

  // **Show modal only after slot stops**
  showModal(left + right); // ya number, tumhare hisab se
}






</script>