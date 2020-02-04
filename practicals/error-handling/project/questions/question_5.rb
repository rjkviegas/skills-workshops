# Rules of fizzbuzz
# If x is divisible by 3 print fizz
# If x is divisible by 5 print buzz
# If x is divisible by 15 print fizzbuzz
# Otherwise print x

x = gets.chomp.to_i

if x % 3 == 0
  puts "Fizz"
elsif x % 5
  puts "Buzz"
elsif x % 3 && x % 5 == 0
  puts "FizzBuzz"
else
  puts x
end
