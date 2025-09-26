$(document).ready(function () {
    setToday();
   
    $("#btnPlay").click(function () {
        Play();
    });


    $("#btnStop").click(function () {
        Stop();
    });

    

    $("#ddlMonths").change(function () {
        var Month = $("#ddlMonths").val();
        var Year = $("#ddlYears").val();
        var CurrentMonth = new Date().getMonth() + 1;
        var CurrentYear = new Date().getFullYear();
        if (Year < CurrentYear) {
            ShowData(Month, Year);
        } else {
            ShowData(Month, Year);
        }
        $('#thShowMonth').text($("#ddlMonths option:selected").text());
    });
    $("#ddlYears").change(function () {
        getMonths();
        var Month = $("#ddlMonths").val();
        var Year = $("#ddlYears").val();
        var CurrentMonth = new Date().getMonth() + 1;
        var CurrentYear = new Date().getFullYear();
        if (Year < CurrentYear) {
            ShowData(1, Year);
        } else {
            ShowData(Month, Year);
        }
    });
});

function ShowNumber() {
    $.ajax({
        type: "POST",
        url: "/MatkaDraws/MatkaNumber",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {

            if (data.Number > -1) {
                var Number = data.Number < 10 ? '0' + data.Number.toString() : data.Number.toString();
                var FirstNumber = Number.substring(0, 1);
                var LastNumber = Number.substring(1, 2);
                var firstImageLink = "/image/Lg-Number/" + FirstNumber + ".png";
                var LastImageLink = "/image/Lg-Number/" + LastNumber + ".png";
                var NextDates = data.NextDate.split('-');
                var d = new Date();
                CurrentLondontime = new Date(d.getTime() + (d.getTimezoneOffset() + 330) * 60000);
                var NextSlotTime = new Date(parseInt(NextDates[2]), parseInt(NextDates[1] - 1), parseInt(NextDates[0]), data.nextSlot.Hours, data.nextSlot.Minutes, 0);
                var TotalMiliSeconds = NextSlotTime.getTime() - CurrentLondontime.getTime();
                if (data.IsSuccess) {
                    $("#btnPlay").trigger('click');
                    $('#imgShowNumberLeft').attr("src", "/image/Lg-Number/GifDown.gif");
                    $('#imgShowNumberRight').attr("src", "/image/Lg-Number/GifUp.gif");
                    $('#imgTop1').attr("src", "/image/Sm-Number/GifUp-sm.gif");
                    $('#imgTop2').attr("src", "/image/Sm-Number/GifDown-sm.gif");
                    $('#imgTop3').attr("src", "/image/Sm-Number/GifUp-sm.gif");
                    $('#imgTop4').attr("src", "/image/Sm-Number/GifDown-sm.gif");
                    $('#imgTop5').attr("src", "/image/Sm-Number/GifUp-sm.gif");
                    $('#imgTop6').attr("src", "/image/Sm-Number/GifDown-sm.gif");
                    $('#glowGreen').addClass("GlowGreen");
                    $('#glowRed').removeClass("GlowRed");
                    setTimeout(function () {
                        $('#imgShowNumberLeft').attr("src", firstImageLink);
                        $('#imgShowNumberRight').attr("src", LastImageLink);
                        $("#btnStop").trigger('click');
                        var Month = new Date().getMonth() + 1;
                        var Year = new Date().getFullYear();
                        ShowData(Month, Year);
                        SetSixDigitNumber(data.SixDigitNumber.toString());
                        UpdateResult(Number);
                        $('#glowGreen').removeClass("GlowGreen");
                        $('#glowRed').addClass("GlowRed");
                        setTimeout(function () {
                            ShowNumber();
                        }, TotalMiliSeconds);
                    }, 60000);
                } else {
                    $('#glowGreen').removeClass("GlowGreen");
                    $('#glowRed').addClass("GlowRed");
                    $('#imgShowNumberLeft').attr("src", firstImageLink);
                    $('#imgShowNumberRight').attr("src", LastImageLink);
                    setTimeout(function () {
                        ShowNumber();
                    }, TotalMiliSeconds);
                }
            }
        },
        failure: function (response) { },
        error: function (response) { }
    });
}

function setToday() {
    var Month = new Date().getMonth() + 1;
    var Year = new Date().getFullYear();
    var Day = new Date().getDate();
    $("#ddlMonths").val(Month);
    $('#thShowMonth').text($("#ddlMonths option:selected").text());
    var TotalDays = new Date(Year, Month, 0).getDate();
    if (TotalDays == 28) {
        $(".th29").hide(0);
        $(".th30").hide(0);
        $(".th31").hide(0);
    } else if (TotalDays == 29) {
        $(".th29").show(0);
        $(".th30").hide(0);
        $(".th31").hide(0);
    } else if (TotalDays == 30) {
        $(".th29").show(0);
        $(".th30").show(0);
        $(".th31").hide(0);
    } else if (TotalDays == 31) {
        $(".th29").show(0);
        $(".th30").show(0);
        $(".th31").show(0);
    }
}

function getMonths() {
    var selectedYear = $("#ddlYears").val();

    var Month = new Date().getMonth() + 1;
    var Year = new Date().getFullYear();
    var Day = new Date().getDate();
    var monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
    ];
    $("#ddlMonths").empty();
    if (selectedYear != Year) {
        for (var i = 0; i < 12; i++) {
            $("#ddlMonths").append('<option value="' + (i + 1) + '">' + monthNames[i] + ' </option>');
        }
    } else {
        for (var i = 0; i < Month; i++) {
            $("#ddlMonths").append('<option value="' + (i + 1) + '">' + monthNames[i] + ' </option>');
        }
        $("#ddlMonths").val(Month);
    }
    $('#thShowMonth').text($("#ddlMonths option:selected").text());
}

function ShowData(month, Year) {
    $.ajax({
        type: "POST",
        url: "/MatkaDraws/MatkaResultByMonthYear",
        data: JSON.stringify({
            Month: parseInt(month),
            Year: parseInt(Year)
        }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data.IsSuccess) {
                var Result = data.result;
                $('#tbodyData').empty();
                var data = '';
                var Month = $("#ddlMonths").val();
                var Year = $("#ddlYears").val();
                var TotalDays = new Date(Year, Month, 0).getDate();
                for (var i = 0; i < Result.length; i++) {

                    var LondonTime = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate(), Result[i].slottime.Hours, Result[i].slottime.Minutes, 0);
                    var istD = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate(), Result[i].slottime.Hours, Result[i].slottime.Minutes, 0);

                    var hours = Result[i].slottime.Hours;
                    var minutes = Result[i].slottime.Minutes;
                    var ampm = hours >= 12 ? 'PM' : 'AM';
                    hours = hours % 12;
                    hours = hours ? hours : 12;
                    hours = hours < 10 ? '0' + hours : hours;
                    minutes = minutes < 10 ? '0' + minutes : minutes;
                    var strTime = hours + ':' + minutes + ' ' + ampm;
                    istD.setHours(LondonTime.getHours() + 5);
                    istD.setMinutes(LondonTime.getMinutes() + 30);
                    var hoursIST = istD.getHours();
                    var minutesIST = istD.getMinutes();
                    var ampmIST = hoursIST >= 12 ? 'PM' : 'AM';
                    hoursIST = hoursIST % 12;
                    hoursIST = hoursIST ? hoursIST : 12;
                    hoursIST = hoursIST < 10 ? '0' + hoursIST : hoursIST;
                    minutesIST = minutesIST < 10 ? '0' + minutesIST : minutesIST;
                    var strTimeIST = hoursIST + ':' + minutesIST + ' ' + ampmIST;
                    data += '<tr><td class="time">' + strTime + '</td>';
                    if (Result[i]._1 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._1 < 10 ? '0' + Result[i]._1.toString() : Result[i]._1.toString()) + ' </td>';
                    }
                    if (Result[i]._2 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._2 < 10 ? '0' + Result[i]._2.toString() : Result[i]._2.toString()) + ' </td>';
                    }
                    if (Result[i]._3 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._3 < 10 ? '0' + Result[i]._3.toString() : Result[i]._3.toString()) + ' </td>';
                    }
                    if (Result[i]._4 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._4 < 10 ? '0' + Result[i]._4.toString() : Result[i]._4.toString()) + ' </td>';
                    }
                    if (Result[i]._5 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._5 < 10 ? '0' + Result[i]._5.toString() : Result[i]._5.toString()) + ' </td>';
                    }
                    if (Result[i]._6 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._6 < 10 ? '0' + Result[i]._6.toString() : Result[i]._6.toString()) + ' </td>';
                    }
                    if (Result[i]._7 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._7 < 10 ? '0' + Result[i]._7.toString() : Result[i]._7.toString()) + ' </td>';
                    }
                    if (Result[i]._8 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._8 < 10 ? '0' + Result[i]._8.toString() : Result[i]._8.toString()) + ' </td>';
                    }
                    if (Result[i]._9 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._9 < 10 ? '0' + Result[i]._9.toString() : Result[i]._9.toString()) + ' </td>';
                    }
                    if (Result[i]._10 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._10 < 10 ? '0' + Result[i]._10.toString() : Result[i]._10.toString()) + ' </td>';
                    }
                    if (Result[i]._11 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._11 < 10 ? '0' + Result[i]._11.toString() : Result[i]._11.toString()) + ' </td>';
                    }
                    if (Result[i]._12 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._12 < 10 ? '0' + Result[i]._12.toString() : Result[i]._12.toString()) + ' </td>';
                    }
                    if (Result[i]._13 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._13 < 10 ? '0' + Result[i]._13.toString() : Result[i]._13.toString()) + ' </td>';
                    }
                    if (Result[i]._14 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._14 < 10 ? '0' + Result[i]._14.toString() : Result[i]._14.toString()) + ' </td>';
                    }
                    if (Result[i]._15 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._15 < 10 ? '0' + Result[i]._15.toString() : Result[i]._15.toString()) + ' </td>';
                    }
                    if (Result[i]._16 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._16 < 10 ? '0' + Result[i]._16.toString() : Result[i]._16.toString()) + ' </td>';
                    }
                    if (Result[i]._17 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._17 < 10 ? '0' + Result[i]._17.toString() : Result[i]._17.toString()) + ' </td>';
                    }
                    if (Result[i]._18 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._18 < 10 ? '0' + Result[i]._18.toString() : Result[i]._18.toString()) + ' </td>';
                    }
                    if (Result[i]._19 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._19 < 10 ? '0' + Result[i]._19.toString() : Result[i]._19.toString()) + ' </td>';
                    }
                    if (Result[i]._20 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._20 < 10 ? '0' + Result[i]._20.toString() : Result[i]._20.toString()) + ' </td>';
                    }
                    if (Result[i]._21 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._21 < 10 ? '0' + Result[i]._21.toString() : Result[i]._21.toString()) + ' </td>';
                    }
                    if (Result[i]._22 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._22 < 10 ? '0' + Result[i]._22.toString() : Result[i]._22.toString()) + ' </td>';
                    }
                    if (Result[i]._23 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._23 < 10 ? '0' + Result[i]._23.toString() : Result[i]._23.toString()) + ' </td>';
                    }
                    if (Result[i]._24 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._24 < 10 ? '0' + Result[i]._24.toString() : Result[i]._24.toString()) + ' </td>';
                    }
                    if (Result[i]._25 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._25 < 10 ? '0' + Result[i]._25.toString() : Result[i]._25.toString()) + ' </td>';
                    }
                    if (Result[i]._26 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._26 < 10 ? '0' + Result[i]._26.toString() : Result[i]._26.toString()) + ' </td>';
                    }
                    if (Result[i]._27 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._27 < 10 ? '0' + Result[i]._27.toString() : Result[i]._27.toString()) + ' </td>';
                    }
                    if (Result[i]._28 < 0) {
                        data += ' <td> - </td>';
                    } else {
                        data += ' <td> ' + (Result[i]._28 < 10 ? '0' + Result[i]._28.toString() : Result[i]._28.toString()) + ' </td>';
                    }
                    if (TotalDays == 28) {
                        $(".th29").hide();
                        $(".th30").hide();
                        $(".th31").hide();
                    } else if (TotalDays == 29) {
                        $(".th29").show();
                        $(".th30").hide();
                        $(".th31").hide();
                        if (Result[i]._29 < 0) {
                            data += ' <td class="th29"> - </td>';
                        } else {
                            data += ' <td class="th29"> ' + (Result[i]._29 < 10 ? '0' + Result[i]._29.toString() : Result[i]._29.toString()) + ' </td>';
                        }
                    } else if (TotalDays == 30) {
                        $(".th29").show();
                        $(".th30").show();
                        $(".th31").hide();
                        if (Result[i]._29 < 0) {
                            data += ' <td class="th29"> - </td>';
                        } else {
                            data += ' <td class="th29"> ' + (Result[i]._29 < 10 ? '0' + Result[i]._29.toString() : Result[i]._29.toString()) + ' </td>';
                        }
                        if (Result[i]._30 < 0) {
                            data += ' <td class="th30"> - </td>';
                        } else {
                            data += ' <td class="th30"> ' + (Result[i]._30 < 10 ? '0' + Result[i]._30.toString() : Result[i]._30.toString()) + ' </td>';
                        }
                    } else if (TotalDays == 31) {
                        $(".th29").show();
                        $(".th30").show();
                        $(".th31").show();
                        if (Result[i]._29 < 0) {
                            data += ' <td class="th29"> - </td>';
                        } else {
                            data += ' <td class="th29"> ' + (Result[i]._29 < 10 ? '0' + Result[i]._29.toString() : Result[i]._29.toString()) + ' </td>';
                        }
                        if (Result[i]._30 < 0) {
                            data += ' <td class="th30"> - </td>';
                        } else {
                            data += ' <td class="th30"> ' + (Result[i]._30 < 10 ? '0' + Result[i]._30.toString() : Result[i]._30.toString()) + ' </td>';
                        }
                        if (Result[i]._31 < 0) {
                            data += ' <td class="th31"> - </td></tr>';
                        } else {
                            data += ' <td class="th31"> ' + (Result[i]._31 < 10 ? '0' + Result[i]._31.toString() : Result[i]._31.toString()) + ' </td></tr>';
                        }
                    }
                }
                $('#tbodyData').append(data);
            } else {
                toastr.error(data.Message);
            }
        },
        failure: function (response) { },
        error: function (response) { }
    });
}

function UpdateResult(Number) {
    $.ajax({
        type: "POST",
        url: "/MatkaDraws/SetResult",
        data: JSON.stringify({
            Number: parseInt(Number)
        }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data) {
                var Result = data.result;
            }
            else {
                toastr.error(data.Message);
            }
        },
        failure: function (response) { },
        error: function (response) { }
    });
}

function SetSixDigitNumber(SixDigitNumber) {
    var FirstNumber = SixDigitNumber.substring(0, 1);
    var SecondNumber = SixDigitNumber.substring(1, 2);
    var ThirdNumber = SixDigitNumber.substring(2, 3);
    var FourthNumber = SixDigitNumber.substring(3, 4);
    var FifthNumber = SixDigitNumber.substring(4, 5);
    var SixthNumber = SixDigitNumber.substring(5, 6);
    var firstImageLink = "/image/Sm-Number/" + FirstNumber + ".png";
    var SecondImageLink = "/image/Sm-Number/" + SecondNumber + ".png";
    var ThirdImageLink = "/image/Sm-Number/" + ThirdNumber + ".png";
    var FourthImageLink = "/image/Sm-Number/" + FourthNumber + ".png";
    var fifthImageLink = "/image/Sm-Number/" + FifthNumber + ".png";
    var SixthImageLink = "/image/Sm-Number/" + SixthNumber + ".png";
    $('#imgTop1').attr("src", firstImageLink);
    $('#imgTop2').attr("src", SecondImageLink);
    $('#imgTop3').attr("src", ThirdImageLink);
    $('#imgTop4').attr("src", FourthImageLink);
    $('#imgTop5').attr("src", fifthImageLink);
    $('#imgTop6').attr("src", SixthImageLink);
}

function showTimeIndia() {
    var d = new Date();
    var istD = new Date(d.getTime() + (d.getTimezoneOffset() + 330) * 60000);
    var hours = istD.getHours();
    var minutes = istD.getMinutes();
    var Seconds = istD.getSeconds();
    //var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours < 10 ? '0' + hours : hours;
    minutes = minutes < 10 ? '0' + minutes : minutes;
    //Seconds = Seconds < 10 ? '0' + Seconds : Seconds;
    var strTime = istD.getDate() + "/" + (istD.getMonth() + 1) + "/" + istD.getFullYear() + " " + hours + ':' + minutes;// +  ' + ampm;
    $(".spnTimeIndia").text(strTime);
    var t = setTimeout(showTimeIndia, 1000);
}

function Play() {
    var media = document.getElementById("admusic");
    media.src= "/Audio/audio.mp3";
    const playPromise = media.play();
    if (playPromise !== null) {
        playPromise.catch(() => { media.play(); })
    }
}


function Stop() {
    //$("#admusic")[0].src = "/Audio/LadyGagaPokerFace.mp3";
    //$("#admusic")[0].play();
    var media = document.getElementById("admusic");
    media.src = "";
    const playPromise = media.play();
    if (playPromise !== null) {
        playPromise.catch(() => { media.play(); })
    }
}