(function(exports){
  function CalculatorView(){}

  CalculatorView.prototype.buildOutput = function(result) {
    return `<h2>${result}</h2>`  
  }

  exports.CalculatorView = CalculatorView
})(this)
