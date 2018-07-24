(function(exports){
  function CalculatorView(){}

  CalculatorView.prototype.buildOutput = function(result) {
    document.getElementById('output').innerHTML = result
  }

  exports.CalculatorView = CalculatorView
})(this)
