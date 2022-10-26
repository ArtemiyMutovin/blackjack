class User
  attr_accessor :hand, :balance

  def initialize(*_name)
    @balance = 100
  end

  def increase_balance
    @balance += 10
  end

  def decrease_balance
    @balance -= 10
  end
end
