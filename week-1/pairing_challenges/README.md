# Pairing Challenges

A series of challenges to complete in pairs. Try both [Pairing Styles](http://articles.coreyhaines.com/posts/thoughts-on-pair-programming): *Driver-Navigator* and *Ping-Pong*.

All challenges are to transform data from one form to another in an _elegant_ way. You can think of elegance as:

- Working
- Easy to read and understand
- Fewest elements (functions, lines of code, iterators, and so on).

### Challenge Set 1: Arrays

Transform the following first arrays into the second entities:

```
[1, 2, 3, 4, 5] => [2, 3, 4, 5, 6]
```

```
[1, 3, 5, 4, 2] => [1, 2, 3, 4, 5]
```

```
[1, 3, 5, 4, 2] => [2, 3, 4, 5, 6]
```

```
[1, 2, 3, 4, 5] => 15 (the sum)
```

```
[1, 2, 3, 4, 5] => 30 (twice the sum)
```

### Challenge Set 2: Hashes

Transform the following first hashes into the second entities:

```
{ a: 1, b: 2 } => { a: 2, b: 3 }
```

```
{ a: 2, b: 5, c: 1 } => { a: 1, b: 2, c: 5 }
```

```
{ a: 2, b: 5, c: 1 } => [1, 2, 5]
```

```
{ a: 1, b: 2, c: 3 } => { "1"=>"a", "2"=>"b", "3"=>"c" }
```

### Challenge Set 3: Extracting information from hashes

See the [list of house prices by area](./house_prices_by_area.rb). It contains a large hash.

- The *keys* of the hash are *arrays* of a _district_ and a _ward_.
- The *values* of the hash are *hashes* with an _average_, and a _list of all transactions_.
- Each _transaction_ is a _price_, a _postcode_, and a _date_.

1. Convert the big hash to a human-readable string that looks like this:

```
"A house was sold in [district], [ward] for [price] on [date]"
"A house was sold in [district2], [ward2] for [price2] on [date2]"
...
...
... All the other transactions in the hash
```

> This string should be as readable as possible. The `Date` is a particular challenge.

2. Write a method that allows a user to search the hash _by district OR ward_ and return a filtered set of strings as above.
