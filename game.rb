class Game
  attr_reader :player, :dealer, :deck

  def initialize(player, dealer)
    @player = player
    @dealer = dealer
    @deck = Deck.new

    2.times { @player.add_card(@deck) }
    2.times { @dealer.add_card(@deck) }

    @player.decrease_balance
    @dealer.decrease_balance
  end

  def reset_cards
    @player.cards = []
    @dealer.cards = []
  end

  def choice(answer)
    case answer
    when 1
      puts 'Ход пропущен'
      dealer_turn
    when 2
      puts 'Получена новая карта'
      second_step
    else
      puts 'Открываем карты!'
    end
  end

  def ending
    if good_end
      winner
    elsif bad_end
      loser
    else
      draw
    end
  end

  private

  def dealer_turn
    @dealer.add_card(@deck) if @dealer.points < 17
    puts 'Дилер сделал свой ход!'
  end

  def second_step
    @player.add_card(@deck)
    @player.show_cards
    dealer_turn
  end

  def p_result
    puts 'Ваши карты:'
    @player.show_cards
    puts "Кол-во очков: #{@player.points}"
  end

  def d_result
    puts 'Карты дилера:'
    @dealer.show_cards
    puts "Кол-во очков: #{@dealer.points}"
  end

  def winner
    p_result
    d_result
    puts '$$$ Вы выиграли, поздравляем! $$$'
    @player.balance += 20
    puts 'Ваш баланс увеличен'
  end

  def loser
    p_result
    d_result
    puts 'XXX Дилер выиграл! XXX'
    @dealer.balance += 20
  end

  def draw
    p_result
    d_result
    puts '::: Ничья! :::'
    @player.increase_balance
    @dealer.increase_balance
  end

  def good_end
    @player.points > @dealer.points && @player.points <= 21
  end

  def bad_end
    @player.points < @dealer.points && @dealer.points <= 21 || @player.points > 21
  end
end
