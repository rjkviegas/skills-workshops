# Fast intro to functional programming

This workshop will be a fast intro to functional programming.  We'll use JavaScript, but you can program in a functional style in Ruby, and many other languages.

I'll spend 10 minutes demoing writing some code in a functional style.

You'll spend 50 minutes doing exercises that ask you write code in a functional style.

## Basic elements of functional programming

* Functional programming focuses on actions (functions), rather than things (objects).

* Functional code never looks at or changes external variables. Its only effect is to return some data.

## Run the code

Open `index.html` in a web browser.

## Exercises

### Exercise 1

Write some code in a functional style that takes an array of strings `["Mary", "Lauren", "Isla"]` and add exclamation marks to each string `["Mary!", "Lauren!", "Isla!"]`.

### Exercise 2

Write some code in a functional style that takes an array of strings `["Mary read a story to Lauren and Isla.", "Lauren cuddled Isla.", "Isla chortled."]` and counts the number of occurences of the word `Isla`.

### Exercise 3

Write some functional code that finds the average height of these people:

```
var people = [
  { name: "Mary", height: 160 },
  { name: "Lauren", height: 165 },
  { name: "Isla", height: 80 }
];
```
