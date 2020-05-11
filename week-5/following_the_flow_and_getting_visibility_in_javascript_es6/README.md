# Following the flow and getting visibility in JavaScript

## Learning objective

At a high level, this week is about building the skills that let you learn a new language and its patterns.  In this workshop, you'll practice a bunch of different ways of following the flow and getting visibility in JavaScript.

## Following the flow and getting visibility

A great way to understand a piece of code is to follow the flow and get visibility.

### Following the flow

Understanding which parts of your code are running and in which order.

Very similar to tightening the loop, but with a different goal.  Instead of trying to narrow in on one buggy line of code, you're just trying to understand what happens when a piece of code runs.

### Getting visibility

Looking at the data contained in the variables in the code you're trying to understand.

### `console.log`

#### console.logging recognisable strings to follow the flow

A great way of following the flow is to `console.log()` little strings that you recognise.  You can see which ones are printed in which order to figure out what code is running and in which order.

```javascript
class Airport {

  constructor(weather) {
    this.weather = weather
  }

  land(plane) {
    if (plane.isLanded()) {
      console.log("hello1")
    } else if (this.weather.isStormy()) {
      console.log("hello2")
    } else {
      console.log("hello3")
    }
  }
}
```



##### `this`

Really handy to know what value `this` has in a piece of code.  It changes!

```javascript
console.log(this);
```

##### Variables

Does this variable contain what I expect?

```javascript
console.log(airport);
```

##### Functions

Am I calling the right function?

```javascript
console.log(airport.land);
```

##### Function return values

Is this function returning what I expect?

```javascript
console.log(airport.land());
```

##### Function parameters

Does this parameter contain what I expect? What does this parameter even contain?

```javascript
class Airport {
  land(plane) {
    console.log(plane);
  }
}
```

#### Using a step debugger

A debugger is a program that runs your program and lets you step through your program line by line.  Some people really love using a debugger.  Others don't.  Give one a try and see how you feel.

Add `debugger;` to a line in your program that you **know** runs e.g.:

```javascript
function sayHi() {
  var x = "hi";
  debugger;
  x = "howdy";
  console.log(x);
};

sayHi();
```

Run the program and go to the Sources tab of the Chrome dev tools.  To move through your code line by line, click on the Step Over, Step Into and Step Out Of buttons on the far right hand side (they look like little arrows). An overview of what these steps mean can be found [here](https://developers.google.com/web/tools/chrome-devtools/javascript/reference#stepping). When you run a debugger, you can inspect the value of variables by hovering over the variables or lookin in the box labeled 'Scope'.

## Instructions (30 minutes)

* Pair up.

* Clone this repo.

* Open the `index.html` file in your web browser.

* Open the browser console.

* You should see a JavaScript error.

* The code is very badly broken.  Someone called Fiendish Mary went through a perfectly good implementation of FizzBuzz, deleted all the tests and made lots of random changes to the code to break it.

* Try and fix the code in `fizzbuzz.js` using the techniques for following the flow and getting visibility.  Don't rewrite the code from scratch.  Fix the broken code by making small changes and adding small pieces of code.

* Remember to keep swapping driver and navigator.

### Plenary (10 mins)

We'll come back together for a short plenary to discuss learning new techniques.

## Resources

* [Debugging :pill:](https://github.com/makersacademy/course/blob/master/pills/debugging.md)
* [The ready position](http://sjmog.github.io/posts/491_learning_to_learn_1/)
