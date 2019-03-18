require './lib/turn'

class Round
  attr_reader :deck,
              :indexed_card,
              :turns

  def initialize(deck)
    @deck = deck
    @indexed_card = 0
    @turns = []
  end

  def current_card
    deck.cards[@indexed_card]
  end

  def take_turn(new_string)
    turn = Turn.new(new_string, current_card)
    @indexed_card += 1
    @turns << turn
    return turn
  end

  def number_correct
    correct_answers = []
    @turns.each do |turn|
      if turn.correct?
          correct_answers << turn
      end
      end
      return correct_answers.count
  end

  def number_correct_by_category(correct_categories)
    correct_answers = []
      @turns.each do |turn|
        if turn.correct?
          correct_answers << turn
      end
      end
      return correct_answer.count
  end

  def percent_correct
    number_correct.to_f / @turns.count.to_f * 100
  end

  def percent_correct_by_category(percent_category)
    number_correct.to_f / @turns.count.to_f * 100
  end

  def start
    puts "Welcome to Flash Cards! You're playing with #{@deck.count} cards."
    puts "----------------------------------------------------------------"

      @deck.cards.map do |card|

    puts "This is card number #{@indexed_card + 1} of #{@deck.count}."
    puts "Question: #{current_card.question}"
    print "> "
    new_string = gets.chomp
    turn = take_turn(new_string)
    turn.feedback
  end
  puts "****** Game over! ******"
  puts "You had #{number_correct} correct guesses out of #{@deck.count} for a total score of #{percent_correct}%."
  puts "STEM - #{percent_correct_by_category(:STEM)}% correct"
  puts "Geography - #{percent_correct_by_category(:Geography)}% correct"
  puts "** Thanks for Playing! **"
  end
end
