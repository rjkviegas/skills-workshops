function GalleryController(element, Gallery, GalleryView) {
  this._element = element;
  this._GalleryView = GalleryView;
  this._gallery = new Gallery();
};

GalleryController.prototype.addImage = function(imageUrl) {
  this._gallery.addImage(imageUrl);
  this._updateView();
};

GalleryController.prototype._updateView = function() {
  var galleryView = new this._GalleryView(this._gallery);
  this._element.innerHTML = galleryView.toHtml();
};
