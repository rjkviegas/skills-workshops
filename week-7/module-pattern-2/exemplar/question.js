"use strict";

(function(exports) {
  var QUESTION_MARK_COUNT = 2
  function question(text) {
    return text + "?".repeat(QUESTION_MARK_COUNT)
  }
  exports.question = question
})(this)
