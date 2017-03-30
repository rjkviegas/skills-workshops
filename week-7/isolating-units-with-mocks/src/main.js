document.addEventListener("DOMContentLoaded", function() {
  var galleryController = new GalleryController(document.getElementById("app"),
                                                Gallery,
                                                GalleryView);

  galleryController.addImage("https://cuteoverload.files.wordpress.com/2016/01/a-very-friendly-quokka-imgur.jpg");
  galleryController.addImage("https://cuteoverload.files.wordpress.com/2016/01/42bc036e46e29_3-4310-_tphq.jpg");
});
