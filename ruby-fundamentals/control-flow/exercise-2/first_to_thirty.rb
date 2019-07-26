#Write a program where players take turn to roll a dice.
#*Each time they roll a dice the result of this roll gets added to
#their score.
#*The first user to get to a score of thirty wins.
#*The program should output which player won.

p1 = 0
p2 = 0
puts "The game begins!"
while true
  die = rand(5) + 1
  puts "Player one rolled a #{die}!"
  p1 += die
  break if p1 >= 30
  die = rand(5) + 1
  puts "Player  rolled a #{die}!"
  p2 += die
  break if p2 >= 30
  puts "Scoreboard: Player one has #{p1}, Player two has #{p2}"
end

puts ["It's a draw!","Player one wins with #{p1} points to #{p2}!", "Player two wins with #{p2} points to #{p1}!"][p1 <=> p2]
