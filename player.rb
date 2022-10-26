require_relative 'dealer'
require_relative 'deck'

class Player
  attr_accessor :name, :bank, :cards, :deck

  def initialize(name)
    @name = name
    @bank = 100
    @cards = []
  end
end
