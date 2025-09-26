
<?php include('headercss.php'); ?>

<body style="background-image: url(<?=base_url() ?>assets/bg-img.jpg);
    background-size: cover;
    background-position: right;">

    <?php include('top-bra.php'); ?>
 

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
                            <!-- <div class="col-md-3 col-xs-2">
                                <img class="img-responsive" style="" src="<?=base_url() ?>image/India.png" />
                            </div> -->
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

                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">-</p>
                        <p>01:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">-</p>
                        <p>02:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">-</p>
                        <p>03:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">-</p>
                        <p>04:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">-</p>
                        <p>05:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">-</p>
                        <p>06:00 PM</p>
                    </div>
                </div>
            </div>

        </div>

        <div class="bottom-footer">
            <button >See Result</button>
        </div>

    </section>


<?php include('footerscript.php'); ?>