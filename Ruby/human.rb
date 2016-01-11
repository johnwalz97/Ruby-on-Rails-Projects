class Human
    attr_accessor :strength, :stealth, :health, :intelligence
    def initialize
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end
    def attack opponent
        if opponent.class.ancestors == self.class.ancestors
            opponent.health -= 10
            true
        else
            false
        end
    end
end    