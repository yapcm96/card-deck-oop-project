# require './lib/card'
require './lib/deck'


# card = Card.new(2, :spades)
deck = Deck.new

card_1 = deck.draw
card_2 = deck.draw

# puts "You got the #{card.value} of #{card.suit}"
puts "First card: #{card_1}" # this is essentially card.to_s
puts "Second card: #{card_2}"

if card_1 > card_2
    puts "#{card_1} wins!"
end

if card_2 > card_1
    puts "#{card_2} wins!"
end

if card_1 == card_2
    puts "#{card_1} and #{card_2} are equal"
end
# # This double colon reads into the constant SUITS or HUMAN_VALUES and p is for print
# p Deck::SUITS
# p Card::HUMAN_VALUES