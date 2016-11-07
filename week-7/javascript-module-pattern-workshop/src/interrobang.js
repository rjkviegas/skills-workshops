"use strict";

(function(exports) {
  function interrobang(exclaim, question, string) {
    return exclaim(question(string));
  };

  exports.interrobang = interrobang;
})(this);
