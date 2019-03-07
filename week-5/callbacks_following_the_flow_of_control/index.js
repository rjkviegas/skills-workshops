console.log('hello!')

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
   $("#person").html(peopleResponse[0].name);
});

