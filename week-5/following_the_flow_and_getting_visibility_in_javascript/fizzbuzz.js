function FizzBuzz() {

}

FizzBuzz.prototype.play = function(number) {
  var otherNumber = number - 50;
  if (this.isDivisibleBy(15, number)) {
    return 'FizzBuzz';
  } else if (this.isDivisibleBy(20, otherNumber)) {
    return 'Buzz';
  } else {
    return number;
  }
}

FizzBuzz.prototype.isDivisibleBy = function(divisor, number) {
  return number % divisor === 0;
}

var fizzBuzz = new FizzBuzz();

for (var i = 1; i <= 100; i++) {
  // debugger;
  console.log(fizzBuzz.play(i));
}
