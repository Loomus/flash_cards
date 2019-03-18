require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card.rb'
require_relative '../lib/deck.rb'

class DeckTest < Minitest::Test

  def test_deck_initialize
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_instance_of Array, deck.cards
  end

  def test_deck_length
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_equal cards.count, deck.count
    p cards
  end

  def test_how_many_cards_are_in_a_category
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    assert_equal deck.cards_in_category(:Geography), [card_1]
    assert_equal deck.cards_in_category(:STEM), [card_2, card_3]
    assert_equal deck.cards_in_category("Pop Culture"), []
  end
end


  #{}def test_what_is_cards
    #cards = [card_1, card_2, card_3]

    #assert_instance_of cards
  #end

  #def

#  deck.cards.length
  #deck.count
  #deck.cards_in_category(:STEM)
  #deck.cards_in_category(:Geography)
  #deck.cards_in_category("Pop Culture")

#end
