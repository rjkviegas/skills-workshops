# Explore closures in Javascript

## Example 1

Here's an example of code using closures in JS.

```js
function makeConverter(rate) {
	function converter(number) {
		return rate * number;
	}

	return converter;
}

gbp_to_eur = makeConverter(1.12)
eur_to_gdp = makeConverter(0.89)

gbp_to_eur(34) // 38.080000000000005
gbp_to_eur(1000) // 1120

eur_to_gdp(200) // 178
```

1. What is the benefit of making a function like `makeConverter`? What does it return?

1. Paste this code in your console.

The functions `gbp_to_eur` and `eur_to_gdp` are closures.

Inspect them using `console.dir`:
```
console.dir(eur_to_gdp)
console.dir(gbp_to_eur)
```

Pay attentions to the name of the function, the location and the Scopes.

You'll see that the rate is *enclosed* in the closure scope.

## Example 2

```js
function timer() {
  var startTime = Date.now()
	function read() {
		return Date.now() - startTime;
	}
	return read;
}
```

1. Paste this code in your console.

Use it!
```
var t1 = timer()
t1() // each call to t1 will return the number of ms since creating the timer.
```

What is the closure here? How does it work?

Is `startTime` accessible outside of the timer function? Why?

## Reuse

1. Can you write a piece of code that uses a closure?

## Resources

[Explanation of closures on MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures)
