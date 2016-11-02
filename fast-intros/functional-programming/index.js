// Incrementing a number (not functional)

var number = 0;

function add1NotFunctional() {
  number += 1;
};

add1NotFunctional();
console.log(number);

// Incrementing a number (functional)

function add1Functional(number) {
  return number + 1;
};

console.log(add1Functional(3));

// Squaring some numbers (not functional)

var numbers = [1, 2, 3, 4];
var squaredNumbers = [];

for (var i = 0; i < numbers.length; i++) {
  squaredNumbers.push(numbers[i] * numbers[i]);
}

console.log(squaredNumbers);

// Squaring some numbers (functional)

console.log([1, 2, 3, 4].map(function(number) {
  return number * number;
}));

// Summing some numbers (not functional)

var numbers = [1, 2, 3, 4];
var total = 0;

for (var i = 0; i < numbers.length; i++) {
  total += numbers[i];
}

console.log(total);

// Summing some numbers (functional)

console.log([1, 2, 3, 4].reduce(function(sum, number) {
  return sum + number;
}, 0));
