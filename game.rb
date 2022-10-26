require_relative 'player'
require_relative 'dealer'
require_relative 'deck'

class Game
  attr_reader :player, :dealer, :deck

  def initialize(player, dealer)
    @player = player
    @dealer = dealer
  end
end
