

var sIndex = 2;
function playslide() {
    $('ul.slider').children().css("display", "none");
    $('div.navigator').children().css("background-color", "#ffffff");

    if (sIndex > 5) sIndex = 1;
    $('ul.slider').children(".slide" + sIndex).fadeIn("slow");
    //$('ul.slider').children(".slide" + sIndex).slide("slow");
    //$('ul.slider').children(".slide" + sIndex).show("slow");
    $('ul.slider').children(".slide" + sIndex).children('.textshadow').css("display", "none");
    $('ul.slider').children(".slide" + sIndex).children('.textshadow').show("slow");
    $('#ancher' + sIndex).css("background-color", "#06447E");

    sIndex++;
}

function showSlide(slideIndex) {
    clearInterval(slidertimer);
    sIndex = slideIndex
    $('ul.slider').children().css("display", "none");
    $('div.navigator').children().css("background-color", "#ffffff");

    $('ul.slider').children(".slide" + sIndex).fadeIn("slow");

    //$('ul.slider').children(".slide" + sIndex).fadeIn("slow");
    $('ul.slider').children(".slide" + sIndex).children('.textshadow').css("display", "none");
    $('ul.slider').children(".slide" + sIndex).children('.textshadow').show("slow");
    $('#ancher' + sIndex).css("background-color", "#06447E");

    sIndex++;
    slidertimer = setInterval("playslide()", 12000);
}

var slidertimer = setInterval("playslide()", 12000);