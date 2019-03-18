class Deck
  attr_reader :cards

  def initialize(cards)
      @cards = cards
  end

  def count
    cards.count
  end

  def cards_in_category(target_category)
    category_array = []
    cards.each do |card|
      if card.category == target_category
        category_array << card
      end
      end
      return category_array
  end
end
