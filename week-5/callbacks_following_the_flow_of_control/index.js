var i = 4;
console.log(1)
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(3)
  peopleResponse.forEach(function(person) {
    console.log(i++)
    console.log(person.name);
    console.log(i++)
  });
  console.log(12)
});
console.log(2)
