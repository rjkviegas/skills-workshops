Code Quality 2: Readability
===========================

Kent Beck's [Four Rules Of Simple Design](https://martinfowler.com/bliki/BeckDesignRules.html) are as follows, in priority order:

1. Passes the tests (Most important)
2. Reveals intention
3. No duplication
4. Fewest elements (Least important)

In *Code Quality 1 (Testing & Linting)* we focused on **Passes the tests** via RSpec, Coverage, and Rubocop.

Now we'll focus on **Reveals Intention**. Martin Fowler puts it like this:

> "Reveals intention" is Kent's way of saying the code should be easy to understand. Communication is a core value of Extreme Programing, and many programmers like to stress that programs are there to be read by people. Kent's form of expressing this rule implies that the key to enabling understanding is to express your intention in the code, so that your readers can understand what your purpose was when writing it.

Today we'll focus on **revealing intention** through the lens of code readability.

We will do this by training your mind on a set of examples. You will be asked to state 'reveals intention' or 'conceals intention' on each one, then find out if you're right or wrong, followed by a very brief expert discussion. In this way you should gain the ability to determine the readability of code.

Switch to 'slide mode' now.

---

## Remove smallest

Remove the smallest element from an array.
If there are multiple smallest, remove the first.
Return [] for empty array

```ruby
> remove_smallest([3, 1, 2])
=> [3, 2]
> remove_smallest([1, 2, 3, 4, 1])
=> [2, 3, 4, 1]
> remove_smallest([])
=> []
```

---

## Reveals or conceals intention?

```ruby
def remove_smallest(a)
  if a == []; a else a.delete_at(a.find_index(a.min)) end
  return a
end
```

---

## Conceals intention

```ruby
def remove_smallest(a)
  if a == []; a else a.delete_at(a.find_index(a.min)) end
  return a
end
```

---

## Reveals or conceals intention?

```ruby
def remove_smallest(numbers)
  idx = numbers.find_index(numbers.min)
  return numbers if idx.nil?
  numbers.delete_at(idx)

  numbers
end
```

---

## Reveals intention

```ruby
def remove_smallest(numbers)
  idx = numbers.find_index(numbers.min)
  return numbers if idx.nil?
  numbers.delete_at(idx)

  numbers
end
```

---

## Reveals or conceals intention?

```ruby
def remove_smallest(numbers)
  numbers.tap{|nums| nums.delete_at(nums.index(nums.min)) if nums.size > 0}
end
```

---

## Conceals intention

```ruby
def remove_smallest(numbers)
  numbers.tap{|nums| nums.delete_at(nums.index(nums.min)) if nums.size > 0}
end
```

---

## Reveals or conceals intention?

```ruby
def remove_smallest(numbers)
  return [] if numbers.empty?
  numbers.delete_at(numbers.index(numbers.min))
  return numbers
end
```

---

## Conceals intention

```ruby
def remove_smallest(numbers)
  return [] if numbers.empty?
  numbers.delete_at(numbers.index(numbers.min))
  return numbers
end
```

---

## Reveals or conceals intention?

```ruby
def remove_smallest(numbers)
  return [] if numbers == []
  smallest = numbers.min
  smallest_index = numbers.find_index smallest
  numbers.delete_at smallest_index
  numbers
end
```

---

## Reveals intention

```ruby
def remove_smallest(numbers)
  return [] if numbers == []
  smallest = numbers.min
  smallest_index = numbers.find_index numbers.min
  numbers.delete_at smallest_index
  numbers
end
```

---

## Return number of vowels

Vowels are a, e, i, o, u.
Assume lowercase string.

```ruby
> vowel_count("abracadabra")
=> 5
```

---

## Reveals or conceals intention?

```ruby
def vowel_count(string)
  new_string = string.gsub(/[aeiou]/, "*")
  new_string.count("*")
end
```

---

## Reveals intention

```ruby
def vowel_count(string)
  new_string = string.gsub(/[aeiou]/, "*")
  new_string.count("*")
end
```

---

## Reveals or conceals intention?

```ruby
VOWELS = "aeiou"

def vowel_count(string)
  string.chars.count do |char|
    VOWELS.include? char
  end
end
```

---

## Reveals intention

```ruby
VOWELS = "aeiou"

def vowel_count(string)
  string.chars.count do |char|
    VOWELS.include? char
  end
end
```

---

## Reveals or conceals intention?

```ruby
def vowel_count(string)
  string.count("aeiou")
end
```

---

## Reveals intention

```ruby
def vowel_count(string)
  string.count("aeiou")
end
```

---

## Reveals or conceals intention?

```ruby
def vowel_count(string)
  array = []
  word = string.downcase.split("")

  word.each do |i|
    if i == 'a'
      array << i
    elsif i == 'o'
      array << i
    elsif i =='i'
      array << i
    elsif i == 'u'
      array << i
    elsif i == 'e'
      array << i

    end

  end


  p array.length


end
```

---

## Conceals intention

```ruby
def vowel_count(string)
  array = []
  word = string.downcase.split("")

  word.each do |i|
    if i == 'a'
      array << i
    elsif i == 'o'
      array << i
    elsif i =='i'
      array << i
    elsif i == 'u'
      array << i
    elsif i == 'e'
      array << i

    end

  end


  p array.length


end
```

---

## Reveals or conceals intention?

```ruby
def vowel_count(string)
count = 0
  ary = string.scan /\w/
  ary.each do |x|
  if x == "a" || x == "e" ||x == "i" ||x == "o" ||x == "u"
  count = count + 1
  end
  end
  count
end
```

---

## Conceals intention

```ruby
def vowel_count(string)
count = 0
  ary = string.scan /\w/
  ary.each do |x|
  if x == "a" || x == "e" ||x == "i" ||x == "o" ||x == "u"
  count = count + 1
  end
  end
  count
end
```

---

## Return minimum and maximum from stringified number sequence

Given a string of space separated numbers, return the highest and lowest number.

```ruby
> high_and_low("1 2 3 4 5")
=> "5 1"
> high_and_low("1 2 -3 4 5")
=> "5 -3"
> high_and_low("1 9 3 4 -5")
=> "9 -5"
```

---

## Reveals or conceals intention?

```ruby
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end
```

---

## Conceals intention

```ruby
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end
```

---

## Reveals or conceals intention?

```ruby
def high_and_low(numbers)
  numbers = numbers.split.map(&:to_i)
  "#{numbers.max} #{numbers.min}"
end
```

---

## Reveals intention

```ruby
def high_and_low(numbers)
  numbers = numbers.split.map(&:to_i)
  "#{numbers.max} #{numbers.min}"
end
```

---

## Reveals or conceals intention?

```ruby
def high_and_low(numbers)
  integers = numbers.split(" ").map(&:to_i)
  min, max = integers.minmax
  "#{max} #{min}"
end
```

---

## Reveals intention

```ruby
def high_and_low(numbers)
  integers = numbers.split(" ").map(&:to_i)
  min, max = integers.minmax
  "#{max} #{min}"
end
```

---

## Reveals or conceals intention?

```ruby
def high_and_low(numbers)
  k=numbers.split(' ').map(&:to_i)
  k=k.sort.reverse
  return k.first.to_s + " " + k.last.to_s
end
```

---

## Conceals intention

```ruby
def high_and_low(numbers)
  k=numbers.split(' ').map(&:to_i)
  k=k.sort.reverse
  return k.first.to_s + " " + k.last.to_s
end
```

---

## Find the outlier

Given an array that is either:

1. All odd numbers with one even number N
2. All even numbers with one odd number N

Return N.

Example:

```ruby
> find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
=> 11
> find_outlier([160, 3, 1719, 19, 11, 13, -21])
=> 160
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
  integers.find(&outlier)
end
```

---

## Conceals intention

```ruby
def find_outlier(integers)
  outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
  integers.find(&outlier)
end
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  odd = integers.find_all{ |x| x % 2 != 0 }
  even = integers.find_all{ |y| y % 2 == 0 }

  result = (odd.size == 1) ? odd : even
  return result[0]
end
```

---

## Conceals intention

```ruby
def find_outlier(integers)
  odd = integers.find_all{ |x| x % 2 != 0 }
  even = integers.find_all{ |y| y % 2 == 0 }

  result = (odd.size == 1) ? odd : even
  return result[0]
end
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  return integers.find(&:odd?) if majority_even?(integers)
  integers.find(&:even?)
end

def majority_even?(integers)
  integers.first(3).count(&:even?) >= 2
end
```

---

## Reveals intention

```ruby
def find_outlier(integers)
  return integers.find(&:odd?) if majority_even?(integers)
  integers.find(&:even?)
end

def majority_even?(integers)
  integers.first(3).count(&:even?) >= 2
end
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  odd_arr = []
  even_arr = []
  integers.each do |n|
    if n.odd?
      odd_arr << n
    else even_arr << n
    end
    if odd_arr.length > 1 && even_arr.length == 1
      return even_arr[0]
    elsif even_arr.length > 1 && odd_arr.length == 1
      return odd_arr[0]
    end
  end

end
```

---

## Conceals intention

```ruby
def find_outlier(integers)
  odd_arr = []
  even_arr = []
  integers.each do |n|
    if n.odd?
      odd_arr << n
    else even_arr << n
    end
    if odd_arr.length > 1 && even_arr.length == 1
      return even_arr[0]
    elsif even_arr.length > 1 && odd_arr.length == 1
      return odd_arr[0]
    end
  end

end
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  odd, even = integers.partition(&:odd?)
  odd.length > 1 ? even[0] : odd[0]
end
```

---

## Reveals intention

```ruby
def find_outlier(integers)
  odd, even = integers.partition(&:odd?)
  odd.length > 1 ? even[0] : odd[0]
end
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end
```

---

## Conceals intention

```ruby
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end
```

---

## Reveals or conceals intention?

```ruby
def find_outlier(integers)
  integers.partition{|x| x.odd?}.find{|x| x.size==1}[0]
end
```

---

## Conceals intention

```ruby
def find_outlier(integers)
  integers.partition{|x| x.odd?}.find{|x| x.size==1}[0]
end
```

---

## You're done! :smirk_cat: 
