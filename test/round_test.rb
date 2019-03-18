require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card.rb'
require_relative '../lib/deck.rb'
require_relative '../lib/round.rb'
require_relative '../lib/turn.rb'

class RoundTest < Minitest::Test

  def test_round_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")

    assert_instance_of Deck, round.deck
  end

  def test_turns_array
      card_1 = Card.new("What is the capital of Alask a?", "Juneau", :Geography)
      card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
      deck = Deck.new([card_1, card_2, card_3])
      round = Round.new(deck)
      new_turn = round.take_turn("Juneau")

    assert_equal [new_turn], round.turns
  end

  def test_current_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")

    assert_equal card_1, round.current_card
  end

  def test_new_turn
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 679.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn("Juneau")
    # new_turn = round.take_turn("Juneau")
    # new_turn.class
    # new_turn.correct?
    # round.turns
    # round.number_correct
    # round.take_turn("Venus")
    # round.turns.count
    # round.turns.last.feedback
    # round.number_correct
    # round.number_correct_by_category(:Geography)
    # round.number_correct_by_category(:STEM)
    # round.percent_correct
    # round.percent_correct_by_category(:Geography)
    # round.current_card
end
