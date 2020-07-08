# Exercise taken from encapsulation.md
# Exercise 4 - Test drive the secret diary example
class SecretItem
    def initialize
        @lock = true
    end
    def lock
        if @lock == true
            fail
        else
            @lock = true
            self
        end
    end
    def unlock
        if @lock == true
            @lock = false
            self
        else
            fail
        end
    end
end

class Diary < SecretItem
    def add_entry
        if @lock == false
            "Entry added"
        else
            fail
        end
    end
    def get_entries
        if @lock == false
            "Entries got"
        else
            fail
        end
    end
end


