

// // Exercise 1 - simple callback

// function greet(callback) {
//   console.log()
//   console.log('Hello!');
//   callback();
//   console.log()
// }
//
// greet(function() {
//   console.log()
//   console.log('Goodbye!')
// });


// // Exercise 2 - callback executed on DOM event

// function alert() {
//   console.log()
//   document.getElementById('click-here').addEventListener('click', function() {
//     console.log()
//     console.log('This is an alert!')
//   });
//   console.log();
// }
//
// alert()


// // Exercise 3 - callback executed on DOM event, with a setTimeout

// function alert() {
//   console.log()
//   document.getElementById('click-here').addEventListener('click', function() {
//     console.log()
//     setTimeout(function() {
//       console.log()
//       console.log('This is an alert!')
//     }, 2000)
//     console.log()
//   });
//   console.log();
// }
//
// alert()

// // Exercise 4 - callback executed after an API call

// function getPeople() {
//   console.log();
//   $.get("https://async-workshops-api.herokuapp.com/people", function(response) {
//     console.log();
//     response.forEach(function(person) {
//       console.log(person.name)
//     });
//     console.log();
//   });
//   console.log();
// }
//
// getPeople()
