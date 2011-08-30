jQuery(function() {
  jQuery(".wymeditor").wymeditor({
    basePath: "/assets/wymeditor/",
    iframeBasePath: "/assets/wymeditor/iframe/default/",
    skinPath: "/assets/wymeditor/skins/default/"
  });

  jQuery('form').submit(function () {
    jQuery.each(WYMeditor.INSTANCES, function (i, e) {
      jQuery.wymeditors(i).update();
    });
  });
});
