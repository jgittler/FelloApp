// Pixel Tracking
$("#Price").on('change', function() {
  $("#price_number").val($(this).val());
});
$("#price_number").on('change', function() {
  $("#Price").val($(this).val());
});

var trackPriceCompletion = function() {
  fbq.push(['track', 'AddPaymentInfo']);
}
$("#price_answer input[type='submit']").on("click", function() {
  trackPriceCompletion();
});

$(".yes, .no").on("click", function() {
  trackSurveyCompletion();
});
var trackSurveyCompletion = function() {
  fbq.push(['track', 'CompleteRegistration']);
}

// Set Margins For Prices
$(document).ready(function() {
  setPrices();
});

$(window).resize(function() {
  setPrices();
});

var setPrices = function() {
  var sliderWidth = $("#Price").width();
  var felloNum = sliderWidth * (71/400);
  var oakleyNum = sliderWidth * (100/400);
  var raybanNum = sliderWidth * (175/400);
  var pradaNum = sliderWidth * (250/400);
  var persolNum = sliderWidth * (300/400);

  var priceArr = [
    [$(".fello"), felloNum, 0],
    [$(".oakley"), oakleyNum, felloNum],
    [$(".rayban"), raybanNum, oakleyNum],
    [$(".prada"), pradaNum, raybanNum],
    [$(".persol"), persolNum, pradaNum]
  ]

  $(priceArr).each(function() {
    setPriceMargins(this[0], this[1], this[2]);
  });
}

var setPriceMargins = function(price, num, prevNum) {
  var offset = 20;
  var margin = num - (offset + prevNum);
  console.log(margin);
  price.css("margin-left", margin);
}

// Variable to hold request
var request;
var answer = "";

$("#survey_answer").on("click", ":submit", function(e) {
  answer += $(this).val();
});

var device = "Desktop";
if ( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
  device = "Mobile";
}
// Bind to the submit event of our form
$("#survey_answer, #price_answer").submit(function(event){

    // Abort any pending request
    if (request) {
        request.abort();
    }
    // setup some local variables
    var $form = $(this);

    // Let's select and cache all the fields
    var $inputs = $form.find("input");

    // Serialize the data in the form
    var serializedData = $form.serialize() + "&Answer=" + answer + "&Device=" + device;

    answer = "";
    device = "";

    // Let's disable the inputs for the duration of the Ajax request.
    // Note: we disable elements AFTER the form data has been serialized.
    // Disabled form elements will not be serialized.
    $inputs.prop("disabled", true);

    // Fire off the request to /form.php
    request = $.ajax({
        url: "https://script.google.com/macros/s/AKfycbzwXaeYJUFloTWOhtvePzsGCaQ_kq3eapxdofW-0qwnJUsbQi9t/exec",
        type: "post",
        data: serializedData
    });

    // Callback handler that will be called on success
    request.done(function (response, textStatus, jqXHR){
        // Log a message to the console
        console.log("Hooray, it worked!");
        console.log(response);
        console.log(textStatus);
        console.log(jqXHR);
    });

    // Callback handler that will be called on failure
    request.fail(function (jqXHR, textStatus, errorThrown){
        // Log the error to the console
        console.error(
            "The following error occurred: "+
            textStatus, errorThrown
        );
    });

    // Callback handler that will be called regardless
    // if the request failed or succeeded
    request.always(function () {
        // Reenable the inputs
        $inputs.prop("disabled", false);
    });

    // Prevent default posting of form
    event.preventDefault();
});

// Variable to hold request
// var requestPrice;
//
// var devicePrice = "Desktop";
// if ( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
//   devicePprice = "Mobile";
// }
//
// // Bind to the submit event of our form
// $("#price_answer").submit(function(event){
//
//     // Abort any pending request
//     if (requestPrice) {
//         requestPrice.abort();
//     }
//     // setup some local variables
//     var $form = $(this);
//
//     // Let's select and cache all the fields
//     var $inputs = $form.find("input");
//
//     // Serialize the data in the form
//     var serializedData = $form.serialize() + "&Device=" + devicePrice + "&Answer=N/A";
//
//     devicePrice = "";
//
//     // Let's disable the inputs for the duration of the Ajax request.
//     // Note: we disable elements AFTER the form data has been serialized.
//     // Disabled form elements will not be serialized.
//     $inputs.prop("disabled", true);
//
//     // Fire off the request to /form.php
//     requestPrice = $.ajax({
//         url: "https://script.google.com/macros/s/AKfycbzwXaeYJUFloTWOhtvePzsGCaQ_kq3eapxdofW-0qwnJUsbQi9t/exec",
//         type: "post",
//         data: serializedData
//     });
//
//     // Callback handler that will be called on success
//     requestPrice.done(function (response, textStatus, jqXHR){
//         // Log a message to the console
//         console.log("Hooray, it worked!");
//         console.log(response);
//         console.log(textStatus);
//         console.log(jqXHR);
//     });
//
//     // Callback handler that will be called on failure
//     requestPrice.fail(function (jqXHR, textStatus, errorThrown){
//         // Log the error to the console
//         console.error(
//             "The following error occurred: "+
//             textStatus, errorThrown
//         );
//     });
//
//     // Callback handler that will be called regardless
//     // if the request failed or succeeded
//     requestPrice.always(function () {
//         // Reenable the inputs
//         $inputs.prop("disabled", false);
//     });
//
//     // Prevent default posting of form
//     event.preventDefault();
// });
