jQuery(function() {
  jQuery(".wymeditor").wymeditor({
    basePath: "/assets/wymeditor/",
    iframeBasePath: "/assets/wymeditor/iframe/default/",
    skinPath: "/assets/wymeditor/skins/default/",
    jQueryPath: "/assets/application.js",
    jQueryPath: '/assets/jquery.js',
    wymPath: '/assets/wymeditor/jquery.wymeditor.js'
  });

  jQuery('form').submit(function () {
    jQuery.each(WYMeditor.INSTANCES, function (i, e) {
      jQuery.wymeditors(i).update();
    });
  });
});
