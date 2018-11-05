# Big O Notations

### What do these notations mean?

**Big O of `X`** means the function describing the curve of the algorithm is "small" compared to `X`, where `X` is a function.

To characterise an algorithm, we usually look at the "smallest" function that is still "bigger" than the code's curve.

Here are the functions commonly used to describe complexity are (in order of increasing complexity / descending efficiency ):

* 1 (**constant time**)
* log(n) (**logarithmic** complexity)
* n*log(n)  (**n log n** complexity. Famous for being the minimal complexity for sorting algorithms)
* n (**linear** complexity)
* n^2 (**quadratic** complexity)
* n^3 (**cubic** complexity)
* 2^n (**exponential** complexity)

** Look at curves for each of these:**
[Curves and corresponding BigO Notations](http://science.slc.edu/~jmarshall/courses/2002/spring/cs50/BigO/)

### How do you derive complexity by looking at code.

Sometimes, it is impossible.

For simple algorithms (and all of the ones worked on this week), you can often look at the number of loops and how many times they are run.
Here are some great notes on this:
https://www.codingblocks.net/podcast/what-is-algorithmic-complexity/

### Good to know

Most algorithms will have a worst case scenario. This is the case we use when speaking about their complexity.

The average scenario can also be talked about sometimes.

### Instructions:

* For each algorithm created this week, try to find their Big O looking at the code.
Can you characterise these algorithms into *constant time*, *logarithmic*, *linear*, *quadratic*, *cubic* or *exponential* complexity?
