require_relative 'human'
class Wizard < Human
    def initialize
        @health = 50
        @intelligence = 25
    end
    def heal
        self.health += 10
    end
    def fireball opponent
        if opponent.class.ancestors == self.class.ancestors
            opponent.health -= 20
            true
        else
            false
        end
    end
end