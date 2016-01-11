require_relative 'human'
class Ninja < Human
    def initialize
        @stealth = 175
    end
    def steal opponent
        if opponent.class.ancestors == self.class.ancestors
            self.stealth += 10
            true
        else
            false
        end
    end
    def get_away
        self.health -= 15
    end
end