(function(exports){
  function CalculatorController(){
    this._calculatorModel = new CalculatorModel();
    this._calculatorView = new CalculatorView();
  }

  CalculatorController.prototype.setEventListeners = function(){
    document.getElementById('square-button')
      .addEventListener('click', this.squareNumber.bind(this));
  }

  CalculatorController.prototype.squareNumber = function(){
    let value = document.getElementById('square-input').value
    let result = this._calculatorModel.square(value);
    this._calculatorView.buildOutput(result)
  }

  exports.CalculatorController = CalculatorController
})(this);
