# A single card
class Card
    include Comparable
    # attr_reader :value, :suit

    # Using hash map, we use the fact that {key => value}[key] returns value
    HUMAN_VALUES = {
        1 => :ace,
        2 => 2,
        3 => 3,
        4 => 4,
        5 => 5,
        6 => 6,
        7 => 7,
        8 => 8,
        9 => 9,
        10 => 10,
        11 => :jack,
        12 => :queen,
        13 => :king,
    }

    def initialize(value, suit)
        @value = value
        @suit = suit
    end

    def human_value
        HUMAN_VALUES[value]
    end

    def to_s
        "the #{human_value} of #{@suit}"
    end

    # this tells how to do the comparison
    def <=>(other)
        value <=> other.value
    end

    protected

    attr_reader :value

    # def value
    #     @value
    # end
    # def suit
    #     @suit
    # end
end