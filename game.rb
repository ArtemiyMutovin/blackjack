class Game
  attr_reader :player, :dealer, :deck

  def initialize(player, dealer)
    @player = player
    @dealer = dealer
    @deck = Deck.new

    2.times { @player.add_card!(@deck) }
    2.times { @dealer.add_card!(@deck) }
  end
end
