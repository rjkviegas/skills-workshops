# Callbacks and following the flow of control

## Instructions

### High level goal for the week

At a high level, this week is about building the skills that let you learn a new language and its patterns.  In this workshop, you'll practice following the flow of control to understand the callbacks JavaScript pattern.

### Learning objectives

1. Describe "the flow of control of a program" as "the order in which the parts of the code are executed".
2. Explain the process you use to follow the flow of control.
3. Follow the flow of control to help you understand how callbacks work.

### Following the flow of control

* I want to understand this program's flow of control.

```js
$(document).click(function() {
  console.log("hello!");
});
```

1. Before running the code, I add some `console.log`s.  I log `1` in the bit of code I think will get run first, I log `2` in the bit of code I think will get run second, and so on. For example:

```js
console.log(1);

$(document).click(function() {
  console.log(2);
});

console.log(3);
```

2. I run the code to see if the numbers got printed in order (1, 2, 3 etc.).  If they do, my prediction was correct.
#### Following the flow fast

A developer constantly analyses the flow of control of their code.  Keep trying to improve this skill.  The more adept you are at reading the flow of control without running the code, the faster you'll be.  Build this intuition by making predictions and checking if your prediction is right.


3. If my prediction was incorrect, I examine the code and experiment with it to try to figure out why.  Once I understand, I update my `console.log`s to reflect my new prediction and return to step 2.

### Work through the questions (30 mins)

* Pair up.

* Clone this repo.

* Open the `index.html` file in your web browser.

* Open the browser console.

* You should see `hello!`.

* Open `index.js` in your text editor.

* Paste the code for question 1 (below) into `index.js`.

* Follow the process outlined in the demo to understand the flow of control of the code in the questions.

* Swap driver and navigator.  Continue with the next question.

### Plenary (10 mins)

We'll come back together for a short plenary to discuss our understanding of following the flow of control.

## Questions

Follow the process for understanding the flow of control that we used in the demo.

### Question 1

`console.log` a number in each part of the code.  Run the code.  The numbers should be logged in order: 1, 2, 3, 4... If they aren't, read and experiment with the code to figure out why.  Correct the `console.log`s.

Now fix the code.  It should print out the mouse click event object when the mouse is clicked.

```js
var clickEvent;

$(document).click(function(event) {
  clickEvent = event;
});

console.log("Mouse click event object:", clickEvent);
```

### Question 2

`console.log` a number in each part of the code.  Run the code.  The numbers should be logged in order: 1, 2, 3, 4... If they aren't, follow the flow of control to figure out why.  Correct the `console.log`s.

```js
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(peopleResponse);
});
```

### Question 3

`console.log` a number in each part of the code.  Run the code.  The numbers should be logged in order: 1, 2, 3, 4... If they aren't, follow the flow of control to figure out why.  Correct the `console.log`s.

Now fix the code.  It should print out the people returned by the API.

```js
var people;

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  people = peopleResponse;
});

console.log(people);
```

### Question 4

`console.log` a number in each part of the code.  Run the code.  The numbers should be logged in order: 1, 2, 3, 4... If they aren't, follow the flow of control to figure out why.  Correct the `console.log`s.

Now fix the code.  It should print out the people returned by the API.

```js
function getPeople() {
  return $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
    return peopleResponse;
  });
};

console.log(getPeople());
```

### Question 5

`console.log` a number in each part of the code.  Run the code.  The numbers should be logged in order: 1, 2, 3, 4... If they aren't, follow the flow of control to figure out why.  Correct the `console.log`s.

This code is incomplete.  It should print the names of the people returned by the API.  Try and complete it.

```js
function listNamesOfPeople(people) {
  people.forEach(function(person) {
    console.log(person.name);
  });
};

$.get("https://async-workshops-api.herokuapp.com/people");
```

### Question 6

`console.log` a number in each part of the code.  Run the code.  The numbers should be logged in order: 1, 2, 3, 4... If they aren't, follow the flow of control to figure out why.  Correct the `console.log`s.

(This code is not broken.)

```js
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  peopleResponse.forEach(function(person) {
    $.get("https://async-workshops-api.herokuapp.com/people/" + person.id, function(personResponse) {
      console.log(personResponse.favouriteMusic);
    });
  });
});
```

### Question 7

Write code that will `console.log` `alpha` after one second, `bravo` one second later and `charlie` one second after that.  Write the code so that increasing the delay before one `console.log` will, without changing any other code, increase the delay for the subsequent `console.log`s by the same amount. For example, if you change the code to print `alpha` after two seconds, `bravo` and `charlie` should automatically be delayed by that extra second, too.

## Resources

* [Callbacks tutorial](http://javascriptissexy.com/understand-javascript-callback-functions-and-use-them/)
