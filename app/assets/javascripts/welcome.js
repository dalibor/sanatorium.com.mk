var releases_show = {
  run: function () {
    $('.songs h3').click(function (e) {
      e.preventDefault()
      $(e.target).next().toggle();
    });
  }
}

$(window).load(function() {
  $('#slider').nivoSlider();

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

  var id = $('body').attr("id");
  if (id) {
    controller_action = id;
    if (typeof(window[controller_action]) !== 'undefined' && typeof(window[controller_action]['run']) === 'function') {
      window[controller_action]['run']();
    }
  }
});
