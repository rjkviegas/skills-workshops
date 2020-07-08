# Exercises taken from encapsulation.md 

# Exercise 3 - refactor the methods in the Calculator example (from Exercise 2) into two classes as you see fit

class Calculator 
    def add(number_1, number_2)
        number_1 + number_2
    end

    def subtract(number_1, number_2)
        number_1 - number_2
    end
end

class Printer
    def answer(answer)
        "The Answer is: #{ answer }"
    end
end

