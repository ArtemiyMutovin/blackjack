class Card
  attr_reader :type, :face, :value

  def initialize(type, face)
    @type = type
    @face = face
    @value = card_value
  end

  def show_card
    "#{@value} #{@type}"
  end

  private

  def card_value
    return 10 if %w[J Q K].include?(@face)
    return 11 if @face == 'A'

    @face
  end
end
