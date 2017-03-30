var assert = {
  isTrue: function(trueValue, message) {
    if (!trueValue) {
      console.log("Failed:", message);
    } else {
      console.log("Passed:", message);
    }
  }
};
