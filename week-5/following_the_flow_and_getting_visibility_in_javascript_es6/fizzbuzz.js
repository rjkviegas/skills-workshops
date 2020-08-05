class FizzBuzz {
  play(number) {
    if (this._isDivisibleBy(15, number)) {
      return 'FizzBuzz';
    } else if (this._isDivisibleBy(3, number)) {
      return 'Fizz';
    } else if (this._isDivisibleBy(5, number)) {
      return 'Buzz';
    } else {
      return number;
    }
  }

  _isDivisibleBy(divisor, number) {
    return number % divisor === 0;
  }
}

var fizzBuzz = new FizzBuzz();

for (let i = 1; i <= 100; i++) {
  console.log(fizzBuzz.play(i));
}
