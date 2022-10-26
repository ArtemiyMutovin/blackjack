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
end
