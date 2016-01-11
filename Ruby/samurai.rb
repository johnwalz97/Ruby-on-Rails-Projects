require_relative 'human'
class Samurai < Human
    @@samurai_count = 0;
    def initialize
        @health = 200
        @@samurai_count += 1
    end
    def heal
        self.health += 10
    end
    def deathblow opponent
        if opponent.class.ancestors == self.class.ancestors
            opponent.health = 0
            true
        else
            false
        end
    end
    def meditate
        self.health = 200
    end
    def how_many
        puts @@samurai_count
    end
end