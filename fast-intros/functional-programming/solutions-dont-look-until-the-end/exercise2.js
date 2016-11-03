// Write some code in a functional style that takes an array of
// strings `["Mary read a story to Lauren and Isla.", "Lauren cuddled
// Isla.", "Isla chortled."]` and counts the number of occurences of
// the word `Isla`.

var sentences = ["Mary read a story to Lauren and Isla.",
                 "Lauren cuddled Isla.",
                 "Isla chortled."];

function sum(numbers) {
  return numbers.reduce(function(sum, item) {
    return sum + item;
  });
};

console.log(sum(sentences.map(function(sentence) {
  return (sentence.match(/Isla/g) || []).length;
})));
