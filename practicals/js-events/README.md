# JavaScript Events

In web development, an event refers to something which happens to an html element.  This 'something' can be triggered by a user, or by the browser itself.  Examples of events include;

- a user clicking on a page element
- a user changing content of an input field
- a browser finishing loading a page

Luckily, JavaScript allows us to utilise these events as triggers for useful functionality.

Here's a simple example
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>JS Events example</title>
  </head>

  <body>
    <div id="greeting"></div>
    <button type="button" id="greeting-button">Say Hi</a>

    <script>
      listenForButtonClick();

      function listenForButtonClick() {
        document.getElementById("greeting-button")
          .addEventListener("click", sayHello);
      };

      function sayHello() {
        document
          .getElementById("greeting").innerHTML = "Oh hai!";
      };
    </script>
  </body>
</html>
```

There are a few things of interest here - the div and button elements with ids of `greeting` and `greeting-button`, and the JavaScript functions below.

Notice that the function `listenForbuttonclick` is called as soon as the page is loaded.  This function is responsible for setting up an `event listener` - it targets the button element and sets up some instructions to execeute once a user has clicked on it. Nothing happens until this action takes place.  At that point, the `sayHello` funciton is called and some text is added to the page element with an id of 'greeting'

You can copy and paste the above snippet into a html document and open it in your browser to see this happening in action.

### Instructions

- Clone this repo
- Open `index.html` in your browser and try out the top function - add a number into the text field and press the button next to it.
- examine the html and js files to understand what is happening here and how.  Try to follow the flow of information through the application from the point at which you click on the button, to the point at which the text appears on the page.
- Implement the next two functions - halving a number and finding a percentage.  Some of the necessary logic is already provided for you - your job is to set up some events so that the functions are properly implemented.
- Document your understanding of how JavaScript events work in the context of a single page app - try diagramming or making notes on one of the functions in this application.
