// Write some code in a functional style that takes an array of
// strings (e.g. `["Mary", "Lauren", "Isla"]`) and add exclamation
// marks to each string (e.g. `["Mary!", "Lauren!", "Isla!"]`).

console.log(["Mary", "Lauren", "Isla"].map(function(string) {
  return string + "!";
}));
