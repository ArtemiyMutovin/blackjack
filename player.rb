require_relative 'user'
class Player < User
  attr_accessor :name, :bank, :cards, :deck

  def initialize(name)
    super
    @name = name
    @cards = []
  end
end
