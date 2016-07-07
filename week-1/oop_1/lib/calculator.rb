def add(number_1, number_2)
  number_1 + number_2
end

def subtract(number_1, number_2)
  number_1 - number_2
end

def print_answer(answer)
  "The Answer is: #{ answer }"
end

puts print_answer(add(2, 3))
puts print_answer(subtract(3, 2))