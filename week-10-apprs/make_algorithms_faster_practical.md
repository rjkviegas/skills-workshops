# Making algorithms faster

Here are three algorithms that are very inefficient (you can verify this by running them through your timing framework).

For each of these, use the resources and your learnings about data structures to find the inefficient operations.
Can you change these to make them linear?

### Shuffle
This method shuffles an array (ruby).

```rb
def shuffle(array)
    new_array = []
    until array.empty? do
        random_index = rand array.length
        new_array << array[random_index]
        array.delete_at(random_index)
    end
    new_array
end
```

### hasDuplicates
This function returns `true` if an array contains duplicates, `false` otherwise (javascript).

```js
function hasDuplicates(arr) {
    for (let i = 0; i < arr.length; i++) {
        for (j = i+1; i < arr.length; i++) {
            if (i == j) {
                return true;
            } 
            
        }
    }
        return false;
}
```
### Reverse
This function reverses an array (javascript).

```js
function reverse(arr) {
    new_arr = []
    for (let i = 0; i < arr.length; i++) {
        new_arr.unshift(arr[i])
    }
    return new_arr;    
}
```

## Resources
* [Here’s a table that shows the cost of operations on different data structures](https://en.wikipedia.org/wiki/Dynamic_array#Performance)
* [Arrays](https://www.interviewcake.com/concept/python/array?) and [Dynamic Arrays](https://www.interviewcake.com/concept/python/dynamic-array)
* [Introduction to ruby hashes (an example of hash tables)](https://launchschool.com/blog/how-the-hash-works-in-ruby
)
