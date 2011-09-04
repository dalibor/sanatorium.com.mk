$(window).load(function() {
  $('#slider').nivoSlider();
  //$('#slider').nivoSlider({
    //effect:"boxRandom",
    //slices:15,
    //boxCols:8,
    //boxRows:4,
    //animSpeed:500,
    //pauseTime:3000,
    //startSlide:0,
    //directionNav:true,
    //directionNavHide:true,
    //controlNav:true,
    //controlNavThumbs:false,
    //controlNavThumbsFromRel:true,
    //keyboardNav:true,
    //pauseOnHover:true,
    //manualAdvance:false
  //});


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
    disableNavbarLinks: true
  });


  // change default i18n for timeago if current locale is :mk
  if (window._locale === "mk") {
    jQuery.timeago.settings.strings = {
      prefixAgo: "пред",
      prefixFromNow: "после",
      suffixAgo: null,
      suffixFromNow: null,
      seconds: "помалку од минута",
      minute: "една минута",
      minutes: "%d минути",
      hour: "еден час",
      hours: "%d часа",
      day: "едeн ден",
      days: "%d денови",
      month: "еден месец",
      months: "%d месеци",
      year: "една година",
      years: "%d години"
    };
  }

  $('#tweets').tweets({
    username: 'SanatoriumMK',
    limit: 3
  });
});
