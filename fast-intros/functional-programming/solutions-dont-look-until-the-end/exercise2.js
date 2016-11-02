// Write some code in a functional style that takes an array of
// strings `["Mary read a story to Lauren and Isla.", "Lauren cuddled
// Isla.", "Isla chortled."]` and counts the total length of all the
// strings.

var sentences = ["Mary read a story to Lauren and Isla.",
                 "Lauren cuddled Isla.",
                 "Isla chortled."];

console.log(sentences.reduce(function(sum, sentence) {
  return sum + sentence.length;
}, 0));
