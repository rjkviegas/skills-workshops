function GalleryView(gallery) {
  this._gallery = gallery;
};

GalleryView.prototype.toHtml = function() {
  return this._gallery.imageUrls().map(function(imageUrl) {
    return "<img src='" + imageUrl + "' width=300 />";
  }).join("");
};
