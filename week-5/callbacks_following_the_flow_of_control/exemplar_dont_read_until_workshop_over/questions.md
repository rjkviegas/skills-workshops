# Questions

## Question 1

```javascript
console.log(1) // program starts

// click callback is set up to run when clicks happen
$(document).click(function(clickEvent) {
  console.log(3) // sometime later, a click has happened

  console.log("The click event:", clickEvent);

  console.log(4) // callback finishes running
});

console.log(2) // after callback set up, program stops work (for now)
```

## Question 2

```javascript
console.log(1) // program starts

// AJAX request sent to async-workshops-api.herokuapp.com and callback
// set up to run when response comes back
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(3) // sometime later, the response has come in

  console.log("People response:", peopleResponse);

  console.log(4) // callback finishes running
});

console.log(2) // after callback set up, program stops work (for now)
```

## Question 3

```javascript
console.log(1) // program starts

// AJAX request sent to async-workshops-api.herokuapp.com and callback
// set up to run when response comes back
var getReturnValue = $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(4) // sometime later, the response has come in

  // peopleResponse contains the people data
  console.log("peopleResponse:", peopleResponse)

  console.log(5) // about to finish running the callback

  // A variable returned from a callback won't be returned from the function
  // that the callback was passed to ($.get).  So this return line is redundant.
  // (Research this!)
  return peopleResponse;
});

console.log(2) // after callback is set up, program continues

// getReturnValue contains the return value of the $.get() call (the JS
// object that represents the details of the AJAX request), **not** the
// people data returned by the request.
console.log("getReturnValue:", getReturnValue)

console.log(3) // after callback set up, program stops work (for now)
```

## Question 4

```javascript
console.log(1) // program starts

// AJAX request sent to async-workshops-api.herokuapp.com and callback
// set up to run when response comes back
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(3) // sometime later, response has come in

  // iterate through each person in peopleResponse
  peopleResponse.forEach(function(person) {
    // **Immediately**, a person is printed. There's no "sometime
    // later". The program doesn't pause between starting the
    // iteration and calling the callback for the first person.

    console.log("4 and 5 and 6 and 7") // prints once for each person

    console.log(person.name); // print person's name

    console.log(8) // about to finish running the callback
  });

  console.log(9)
});

console.log(2) // after callback set up, program stops work (for now)
```
