
# card.rb
#
# create a constant
VALID_SUITS = [:hearts, :spades, :clubs, :diamonds].freeze

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError, "This an invalid suite" unless VALID_SUITS.include?(suit)
    raise ArgumentError, "#{value} is an invalid value" if value < 1 || value > 13

    @value = value
    @suit = suit
    

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
