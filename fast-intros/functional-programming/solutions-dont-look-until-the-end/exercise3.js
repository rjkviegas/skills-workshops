// Write some functional code that finds the average height of these people:

var people = [
  { name: "Mary", height: 160 },
  { name: "Lauren", height: 165 },
  { name: "Isla", height: 80 }
];

function pluck(array, key) {
  return array.map(function(item) { return item[key]; });
};

function sum(numbers) {
  return numbers.reduce(function(sum, item) { return sum + item; });
};

function average(array) {
  return sum(array) / array.length;
};

console.log(average(pluck(people, "height")));
