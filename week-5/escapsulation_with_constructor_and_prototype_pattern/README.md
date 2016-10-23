# Encapsulation with the constructor and prototype pattern

## Instructions

At a high level, this week is about building an effective process for learning unfamiliar language features and patterns.  In this workshop, you'll practice using this process to understand some code that uses the constructor and prototype pattern.

You'll also write some code that uses this pattern to encapsulate behaviour.

### Learning objectives

1. Describe what a constructor function does.  Describe what a constructor function's prototype does.
2. Write a constructor function and prototype to encapsulate some behaviour.
3. Explain the strengths and weaknesses of the constructor and prototype pattern as a way to encapsulate behaviour.

### Getting visibility

A great way to understand code is to first tighten the loop, then get visibility.  In this workshop, we'll practice getting visibility.  As you go through the workshop, use `console.log()` to inspect the values of:

* Variables
* Parameters
* Function return values

### Investigate the CountModel code sample (20 mins)

* Pair up.

* Clone this repo.

* Open the `index.html` file in your web browser.

* Open the browser console.

* You should see `hello!`.

* Open `index.js` in your text editor.

* Paste the code for question 1 (below) into `index.js`.

* Play around with the code using the techniques for getting visibility. Answer the questions that are in comments.

* Discuss your answers with your pair partner.

* Swap driver and navigator.  Continue with the next question.

### Encapsulate some behaviour with the constructor and prototype pattern (20 mins)

Use the constructor and prototype pattern to implement the user stories (below).  You can draw on the OO skills you learnt in the first four weeks of the course.  Don't be afraid to diagram! Strive for good encapsulation.

### Plenary (20 mins)

We'll come back together for a short plenary.  We'll show our code and discuss it.  We'll discuss the strengths and weaknesses of the constructor and prototype pattern for encapsulating behaviour.

## Questions

### Question 1

```js
// What happens if you rename CountModel to countmodel? Does this have any ramifications?

function CountModel() {
  this._count = 0;
};

CountModel.prototype = {
  count: function() {
    return this._count;
  },

  set: function(count) {
    this._count = count;
  }
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());
```

### Question 2

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype = {
  count: function() {
    return this._count;
  },

  // What happens if you rename `set` to `_set` (and change
  // `countModel.set(5)` below to `countModel._set(5)`)?
  set: function(count) {
    this._count = count;
  }
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());
```

### Question 3

```js
function CountModel() {
  this._count = 0;

  // What happens if you uncomment the line below. Why does this happen?
  // return {};
};

CountModel.prototype = {
  count: function() {
    return this._count;
  },

  set: function(count) {
    this._count = count;
  }
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());
```

### Question 4

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype = {
  count: function() {
    return this._count;
  },

  set: function(count) {
    this._count = count;
  }
};

// What happens if you omit the `new` keyword in the next line? Why?
var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());
```

### Question 5

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype = {
  count: function() {
    return this._count;
  },

  set: function(count) {
    this._count = count;
  }
};

var countModel = new CountModel();

// What happens if you add this code? Why?
// countModel.set = function() {
//   return "hello";
// };

countModel.set(5);

console.log("count is", countModel.count());
```

### Question 6

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype = {
  count: function() {
    return this._count;
  },

  set: function(count) {
    this._count = count;
  }
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());

// Bonus research project. Can you find the property name below that
// makes the statement log `true`?
// console.log(countModel["???"] === CountModel.prototype);
```

## User Stories

```
As a shepherd
So my sheep can be safe
I want to have a pen they can go into
```

```
As a shepherd
So my sheep can be friends
I want them to be able to say their names
```

```
As a shepherd
So I can know all my sheep are home
I want to get a list of all the names of the sheep in the pen
```

## Resources

- More examples of the constructor and prototype pattern in the [Count project repo](https://github.com/maryrosecook/count)
- [JavaScript constructors, prototypes and the new keyword](https://blog.pivotal.io/labs/labs/javascript-constructors-prototypes-and-the-new-keyword) (Pivotal blog)
