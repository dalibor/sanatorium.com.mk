jQuery(function() {
  jQuery(".wymeditor").wymeditor({
    basePath: "/wymeditor/",
    iframeBasePath: "/wymeditor/iframe/default/",
    skinPath: "/wymeditor/skins/default/",
    wymPath: "/assets/admin/application.js"
  });

  jQuery('form').submit(function () {
    jQuery.each(WYMeditor.INSTANCES, function (i, e) {
      jQuery.wymeditors(i).update();
    });
  });
});
