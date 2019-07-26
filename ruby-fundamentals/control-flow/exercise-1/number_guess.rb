# Write a program that asks a user to guess a chosen
# number. It should:
# * Randomly choose a number between 1 and 10
# * Ask the user to guess a number
# * If the user guesses the correct number the program
# should output a message that says "you guessed correctly"
# * If the user guesses incorrectly the program should
# output "higher" if the guess was less than the chosen
# number or "lower" if the guess was more than the chosen
# number

rand_num = rand(1..10)
puts "I'm thinking of a number between 1 and 10. Try to guess it."
while true
  guess = gets.chomp.to_i
  if guess < 1 || guess > 10
    puts "Nice try, but #{guess} isn't a number between 1 and 10. Try again."
  elsif guess == rand_num
    puts "Wow! You got it!"
    break
  elsif guess < rand_num
    puts "Higher"
  else
    puts "Lower"
  end
end
