
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    # returns a card
    drawn_card = @cards.pop
    return drawn_card
  end

  def shuffle
    # shuffles the deck
    shuffle_deck = @cards.shuffle
    return shuffle_deck
  end

  def count
    @cards.length
  end
end
