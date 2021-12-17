class Card
  include Comparable

  FACE_VALS = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }.freeze

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    own_rank = (rank.class == Integer ? rank : FACE_VALS[rank])
    other_rank = (other.rank.class == Integer ? other.rank : FACE_VALS[other.rank])
    own_rank <=> other_rank
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = []
    refill
  end

  def draw
    refill if @cards.empty?
    @cards.pop
  end

  private

  def refill
    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
end

# Include Card and Deck classes from the last two exercises.

class PokerHand
  attr_reader :hand

  def initialize(deck)
    @hand = []
    5.times do
      @hand << deck.draw
    end
  end

  def print
    hand.each { |card| puts card }
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    ranks = hand.map(&:rank)
    royal = ['Ace', 'King', 'Queen', 'Jack', 10].all? { |rank| ranks.include?(rank) }
    royal && flush?
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    ranks = hand.map(&:rank)
    ranks.uniq.each do |rank|
      return true if ranks.count(rank) >= 4
    end
    false
  end

  def full_house?
    three_of_a_kind = false
    two_of_a_kind = false
    ranks = hand.map(&:rank)

    ranks.uniq.each do |rank|
      three_of_a_kind = true if ranks.count(rank) == 3
      two_of_a_kind = true if ranks.count(rank) == 2
    end

    three_of_a_kind && two_of_a_kind
  end

  def flush?
    suits = hand.map(&:suit).sort
    suits.first == suits.last
  end

  def straight?
    sorted = hand.sort.map { |card| Card::FACE_VALS.fetch(card.rank, card.rank) }
    sorted.each_with_index do |rank, idx|
      break if idx == sorted.size - 1
      if sorted[idx + 1] - rank != 1
        return false
      end
    end
    true
  end

  def three_of_a_kind?
    ranks = hand.map(&:rank)
    ranks.uniq.each do |rank|
      return true if ranks.count(rank) >= 3
    end
    false
  end

  def two_pair?
    n_pairs(2)
  end

  def pair?
    n_pairs(1)
  end

  def n_pairs(n)
    pairs = 0
    ranks = hand.map(&:rank)
    ranks.uniq.each do |rank|
      pairs += 1 if ranks.count(rank) >= 2
    end
    pairs >= n
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
