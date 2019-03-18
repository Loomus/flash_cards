require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card.rb'
require_relative '../lib/turn.rb'


class TurnTest < Minitest::Test

  def test_incorrect_turn_guess
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    guess = "Denver"
    turn = Turn.new(guess, card)

    assert_instance_of Turn, turn
    assert_equal guess, turn.guess
    assert_instance_of Card, turn.card
  end

  def test_if_correct_false
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    guess = "Denver"
    turn = Turn.new(guess, card)

    assert_equal turn.correct?, false
  end

  def test_if_feedback_works_incorrect
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    guess = "Denver"
    turn = Turn.new(guess, card)

    assert_equal turn.feedback, "Incorrect."
  end

  def test_correct_turn_guess
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    guess = "Juneau"
    turn = Turn.new(guess, card)

    assert_instance_of Turn, turn
    assert_equal guess, turn.guess
    assert_instance_of Card, turn.card
  end

  def test_if_correct_true
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    guess = "Juneau"
    turn = Turn.new(guess, card)

    assert_equal turn.correct?, true
  end

  def test_if_feedback_works_correct
    card = Card.new("What is the capital of Alaska", "Juneau", :Geography)
    guess = "Juneau"
    turn = Turn.new(guess, card)

    assert_equal turn.feedback, "Correct!"
  end
end
