require_relative './card'

# A collection of cards
class Deck
    SUITS = [:spades, :hearts, :diamonds, :clubs]

    def initialize
        # spades = (1..13).map {|value| Card.new(value, :spades)}
        @cards = SUITS.map { |suit| build(suit) }.flatten.shuffle
    end

    def draw
        # # this is the default returned if nothing is specified in this block
        # return nil
        @cards.pop
    end

    private
    
    def build(suit)
        (1..13).map { |value| Card.new(value, suit) }
    end
end

