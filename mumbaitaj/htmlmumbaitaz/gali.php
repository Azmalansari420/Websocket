

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Game King | Live Result </title>
    <link rel="stylesheet" href="Mobile_Asset/css/bootstrap.min.css">
    <link href='Mobile_Asset/css/calendar013b.css?v=15092025124722' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <style>
        .extrabtn {
            border: 1px solid #fff;
            padding: 4px 2px 2px 3px;
            text-align: center;
            background: #063EDC;
            margin-top: 50px;
            border-radius: 3px;
            width: 100%;
            margin: 6px;
        }

            .extrabtn p {
                color: #FFFFFF
            }


             /* Top header */
        .top-header {
            background-color: black;
            color: white;
            text-align: center;
            padding: 10px 0;
            font-size: 20px;
            font-weight: bold;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        /* Main content area */
        .content {
            flex: 1;
            overflow-y: auto;
        }

        /* Bottom button area */
        .bottom-footer {
            background-color: white;
            padding: 10px;
            text-align: center;
        }

       /* .bottom-footer button {
            background-color: #f1c40f;
            color: #000;
            border: none;
            padding: 12px 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
        }*/

        .extrabtn {
            border: 1px solid #fff;
            padding: 4px 2px 2px 3px;
            text-align: center;
            background: black;
            margin-top: 50px;
            border-radius: 3px;
            width: 100%;
            margin: 6px;
        }
        .extrabtn p {
            color: #FFFFFF;
        }

         .top-header {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1000;
    }

    /* Fixed footer */
    .bottom-footer {
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        z-index: 1000;
    }
     section {
        padding-top: 58px; /* Adjust based on header height */
        padding-bottom: 73px; /* Adjust based on footer height */
        /*height: calc(100vh - 70px - 60px);*/
        overflow-y: auto;
    }

    .bottom-footer button {
    background-color: black;
    border: none;
    padding: 8px 19px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    color: white;
}


/*topbtn*/
.top-btn {
    background-color: black;
    color: white;
    text-align: center;
    padding: 3px 0;
    font-size: 17px;
    font-weight: bold;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.top-btn {
    position: fixed;
    top: 54px;
    left: 0;
    width: 100%;
    z-index: 1000;
}
.top-btn>a
{
    color: white!important;
    </style>
}
</head>
<body style="background-image: url(assets/bg2-img.jpg);
    background-size: cover;
    background-position: right;">

    <div>
        <div class="top-header">
            <img src="image/logo.jpg" style="    width: 50px;">
            <h4>MUMBAI TAJ</h4>
            <a href=""><i class="fa fa-refresh text-white" style="color:white;"></i></a>
        </div>
        <div class="top-btn">
            <a href="index.php">MUMBAITAJ</a>
            <a href="gali.php">GALI</a>
        </div>
    </div>
 

    <section>
        <div class="container">
            <audio id="admusic" controls style="display:none;" preload='none'>
                <source type='audio/mp3'>
            </audio>
            <button id="btnPlay" hidden>Play</button>
            <button id="btnStop" hidden>stop</button>
            <!-- <div class="row">
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
            </div> -->
            <div class="row">
                <div class="col-xs-2">

                </div>
                <div class="col-xs-8">
                    <div class="ImgCenter">
                        <img src="assets/galislot.png" style="margin-top:10%;" class="img-responsive">
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
                                
                                <img id="imgTop1" style="height:30px" src="image/Sm-Number/3.png" />
                            </div>
                        </div>
                        <div class="centeredTop2">
                            <div class="WhiteBoxLeft">
                                <img id="imgTop2" style="height:30px" src="image/Sm-Number/4.png" />
                            </div>
                        </div>
                        <div class="centeredTop3">
                            <div class="WhiteBoxLeft">
                                
                                <img id="imgTop3" style="height:30px" src="image/Sm-Number/5.png" />
                            </div>
                        </div>
                        <div class="centeredTop4">
                            <div class="WhiteBoxLeft">
                                <img id="imgTop4" style="height:30px" src="image/Sm-Number/1.png" />
                            </div>
                        </div>
                        <div class="centeredTop5">
                            <div class="WhiteBoxLeft">
                                
                                <img id="imgTop5" style="height:30px" src="image/Sm-Number/7.png" />
                            </div>
                        </div>
                        <div class="centeredTop6">
                            <div class="WhiteBoxLeft">
                                <img id="imgTop6" style="height:30px" src="image/Sm-Number/9.png" />
                            </div>
                        </div>
                        <div class="centeredleft">
                            <div class="WhiteBoxLeft">
                                
                                <img id="imgShowNumberLeft" style="height:40px" src="image/Lg-Number/8.png" />
                            </div>
                        </div>
                        <div class="centeredRight">
                            <div class="WhiteBoxRight">
                                <img id="imgShowNumberRight" style="height:40px" src="image/Lg-Number/8.png" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">86</p>
                        <p style="margin:0">Delhi King</p>
                        <p>01:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">92</p>
                        <p style="margin:0">UP</p>
                        <p>02:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">88</p>
                        <p style="margin:0">Faridabad</p>
                        <p>03:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">75</p>
                        <p style="margin:0">Gaziyabad</p>
                        <p>04:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">88</p>
                        <p style="margin:0">Gali</p>
                        <p>05:00 PM</p>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="extrabtn">
                        <p style="margin:0">99</p>
                        <p style="margin:0">Diswar</p>
                        <p>06:00 PM</p>
                    </div>
                </div>
            </div>

        </div>

        <div class="bottom-footer">
            <button >See Result</button>
        </div>

    </section>
    <script src="Mobile_Asset/js/jquery.js"></script>
    <script src="Mobile_Asset/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
        $('.responsiveslider').slick({
            dots: false,
            infinite: false,
            speed: 300,
            arrows: false,
            slidesToShow: 2,
            slidesToScroll: 2,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3,
                        infinite: true,
                        arrows: false,
                        dots: false
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    </script>
    <script src="assets/Toastr/toastr.min.js"></script>
    <script type='text/javascript' src='CustomJavaScript/MainPageJS.min013b.js?v=15092025124722'></script>

    <script>
        showTimeIndia();
        setToday();
        getMonths();
        ShowNumber();
    </script>
    
</body>

<!-- Mirrored from www.dubaisattaking.com/PalManzoorLeh/index by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 Sep 2025 07:17:55 GMT -->
</html>