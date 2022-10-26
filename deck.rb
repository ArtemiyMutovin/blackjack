class Deck
  attr_reader :cards

  def initialize
    @cards = Deck.build_cards
  end

  def self.build_cards
    cards = []

    %w[<З <> + ^].each do |type|
      (2..10).each do |value|
        cards << Card.new(type, value)
      end

      %w[J Q K A].each do |face|
        cards << Card.new(type, face)
      end
    end
    cards.shuffle
  end
end
