class User
  attr_accessor :cards, :balance

  def initialize(*_name)
    @balance = 100
    @cards = []
  end

  def add_card!(deck)
    @cards << deck.cards.shift
  end

  def cards_count
    @cards.count
  end

  def show_cards
    @cards.each_with_index do |card, index|
      puts "#{index + 1}: #{card.face}#{card.type}"
    end
  end

  def increase_balance
    @balance += 10
  end

  def decrease_balance
    @balance -= 10
  end

  def points
    point = 0

    @cards.each do |card|
      point += if card.face == 'A'
                 ace_point(point, card.value)
               else
                 card.value
               end
    end
    point
  end

  private

  def ace_point(point, card_value)
    if point + card_value <= 21
      card_value
    else
      1
    end
  end
end
