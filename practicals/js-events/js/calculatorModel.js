(function(exports){
  function CalculatorModel(){}

  CalculatorModel.prototype.square = function(number) {
    return number * number;
  }

  CalculatorModel.prototype.half = function(number) {
    return number / 2;
  }

  CalculatorModel.prototype.calculatePercentage = function(fraction, whole) {
    return ((fraction / whole) * 100).toFixed(2);
  }

  exports.CalculatorModel = CalculatorModel;
})(this);
