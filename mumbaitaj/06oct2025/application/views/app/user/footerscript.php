  
    <script src="<?=base_url() ?>Mobile_Asset/js/jquery.js"></script>
    <script src="<?=base_url() ?>Mobile_Asset/js/bootstrap.min.js"></script>
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
    <script src="<?=base_url() ?>assets/Toastr/toastr.min.js"></script>
    <script type='text/javascript' src='<?=base_url() ?>CustomJavaScript/MainPageJS.min013b.js?v=15092025124722'></script>

    <script>
        showTimeIndia();
        setToday();
        getMonths();
    </script>
    
</body>

</html>