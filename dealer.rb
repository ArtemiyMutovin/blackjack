require_relative 'user'
class Dealer < User
  attr_accessor :balance, :name

  def initialize
    super
    @name = 'Dealer'
    @cards = []
  end
end
