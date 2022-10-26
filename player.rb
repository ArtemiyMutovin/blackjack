require_relative 'user'
class Player < User
  attr_accessor :name

  def initialize(name)
    super
    @name = name
  end
end
