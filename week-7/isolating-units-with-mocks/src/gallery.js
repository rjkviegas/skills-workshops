function Gallery() {
  this._imageUrls = [];
};

Gallery.prototype.addImage = function(imageUrl) {
  this._imageUrls.push(imageUrl);
};

Gallery.prototype.imageUrls = function() {
  return this._imageUrls;
};
