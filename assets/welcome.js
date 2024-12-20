$(window).load(function() {
  $('#slider').nivoSlider({
    effect: "fade",
    pauseTime: 5000
  });

  $("#photos").thumbnailScroller({
    //scrollerType:"hoverPrecise",
    scrollerType:"clickButtons",
    scrollerOrientation:"horizontal",
    scrollSpeed:2,
    scrollEasing:"easeOutCirc",
    scrollEasingAmount:600,
    acceleration:4,
    scrollSpeed:800,
    noScrollCenterSpace:10,
    autoScrolling:0,
    autoScrollingSpeed:2000,
    autoScrollingEasing:"easeInOutQuad",
    autoScrollingDelay:500
  });
});

$(function () {
  $(".lightbox").lightbox({
    fitToScreen: true,
    imageClickClose: false,
    disableNavbarLinks: true,
    displayDownloadLink: true
  });

  $('.songs h3').click(function (e) {
    e.preventDefault()
    $(e.target).next().toggle();
  });
});
