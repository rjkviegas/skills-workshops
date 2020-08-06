// // Question 1
// // How does the printed output of the program change if you rename
// // CountModel to countmodel (everywhere it appears)?

// function countmodel() {
//   this._count = 0;
// };

// countmodel.prototype.count = function() {
//   return this._count;
// };

// countmodel.prototype.set = function(count) {
//   this._count = count;
// };

// var countmodel = new countmodel();
// countmodel.set(5);
// console.log("count is", countmodel.count());

// // Answer: Has no effect on behaviour of code/output 
// // however it is confusing to read

// // Question 2

// function CountModel() {
//   this._count = 0;
// };

// CountModel.prototype.count = function() {
//   return this._count;
// };

// // How does the printed output of the program change if you rename
// // `set` to `_set` (and change `countModel.set(5)` below to
// // `countModel._set(5)`)?
// CountModel.prototype._set = function(count) {
//   this._count = count;
// };

// var countModel = new CountModel();
// countModel._set(5);
// console.log("count is", countModel.count());

// Answer: has no effect on output/behaviour of the code
// as the underscore is simply a convention in JavaScript, not a rule

// // Question 3

// function CountModel() {
//   this._count = 0;

//   // How does the printed output of the program change if you
//   // uncomment the line below? Why does this happen?

//   return {};
// };

// CountModel.prototype.count = function() {
//   return this._count;
// };

// CountModel.prototype.set = function(count) {
//   this._count = count;
// }

// var countModel = new CountModel();
// countModel.set(5);
// console.log("count is", countModel.count());

// // Answer: "Uncaught TypeError: countModel.set is not a function at index.js:68"
// // I think because of line 56 (return {}') this makes CountModel 
// // an Object without the properties of the CountModel class, as debugging shows
// // it does not have _count property after executing line 56.

// // The return{} stops the implicit return defined on the constructed function's prototype
// // error thrown as set function is not on the empty object

// // Question 4

// function CountModel() {
//   this._count = 0;
// };

// CountModel.prototype.count = function() {
//   return this._count;
// };

// CountModel.prototype.set = function(count) {
//   this._count = count;
// };

// var countModel = new CountModel();

// // How does the printed output of the program change if you add this
// // code? Why?
// countModel.set = function() {
//   return "hello";
// };

// countModel.set(5);

// console.log("count is", countModel.count());

// // Answer: The output is "count is 0" and using debugger it shows that the method on line 97 
// // overwrites the prototype method on line 89 and means the method executed on line 97
// // makes no use of the 5 passed as an argument. The _count property is uneffected by the set method 
// // and is 0

// Question 5

function CountModel() {
  this._count = 0;
};

CountModel.prototype.count = function() {
  return this._count;
};

CountModel.prototype.set = function(count) {
  this._count = count;
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());
console.log(countModel.__proto__ === CountModel.prototype);

// Bonus research project. Can you find the property name below that
// makes the statement print out `true`?
// console.log(countModel["REPLACE_ME"] === CountModel.prototype);