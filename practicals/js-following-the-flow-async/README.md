# Following the flow in asynchronous JavaScript

This exercise will give you practice following the flow of control to understand the callbacks JavaScript pattern. Callbacks are used to control the order in which functions are executed in JavaScript. Because of this, it can be difficult to predict how the code will execute simply by reading the code - the functions might be executed in a different order to how they are read!


## Instructions

- Clone this repository.

- Review the code in `index.js`, there are four commented out examples of asynchronous JavaScript.

- Uncomment each of the exercises in turn, you'll notice that the code includes a number of `console.log()` statements.

- Run the code to check that it is working (open and inspect `index.html` in Chrome to see the results on the console).

- Populate these empty strings so that numbers are logged out to the console in the correct order `1, 2, 3...`.

- See the results of each exercise by opening the `index.html` file in Chrome, and viewing the console. You will need to click the page to see the complete output from Exercise 3!

- Once the numbers are being logged in the correct order for an exercise, take some time to make sure you can follow the flow of the code, before commenting out the solved exercise code and moving to the next one.

Below are the code examples without the additional `console.log` statements, you might find these easier to read.

### Example 1
```js
function greet(callback) {
  console.log('Hello!');
  callback();
}

greet(function() {
  console.log('Goodbye!')
});
```


### Example 2
```js
function alert() {
  document.getElementById('click-here').addEventListener('click', function() {
    console.log('This is an alert!')
  });
}

alert()
```

>What happens when you click the `click-here` element multiple times?

### Example 3

```js
function alert() {
  document.getElementById('click-here').addEventListener('click', function() {
    setTimeout(function() {
      console.log('This is an alert!')
    }, 2000)
  });
}

alert()
```

>What happens when you quickly click the `click-here` element multiple times?

### Example 4

```js
function getPeople() {
  $.get("https://async-workshops-api.herokuapp.com/people", function(response) {
    response.forEach(function(person) {
      console.log(person.name)
    });
  });
}

getPeople()
```

## Further Reading

* [Callbacks Tutorial](http://javascriptissexy.com/understand-javascript-callback-functions-and-use-them/)
