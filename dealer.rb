require_relative 'player'
require_relative 'deck'

class Dealer
  attr_accessor :bank

  def initialize
    @bank = 100
    @cards = []
  end
end
