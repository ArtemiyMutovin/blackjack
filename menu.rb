require_relative 'player'
require_relative 'dealer'
require_relative 'deck'
require_relative 'card'
require_relative 'game'
require_relative 'user'

puts 'Введите ваше имя'
name = gets.chomp

player = Player.new(name)
dealer = Dealer.new

puts "Привет #{player.name}"

loop do
  abort 'На Вашем счету нет денег!' if player.balance.zero?
  abort 'На счету Дилера нет денег!' if dealer.balance.zero?

  game = Game.new(player, dealer)

  puts '*** Начнем игру! ***'
  puts '*** Ваш ход! ***'
  puts "Ваши карты: #{player.cards}"
  puts "Баланс: #{player.balance}"
  puts 'Выберите один из вариантов: 1 - Пропустить ход, 2 - Добавить карту, 3 - Открыть карты'
  answer = gets.chomp.to_i

  game.choice(answer)

  game.ending

  puts 'Хотите начать заново? ( да / нет )'

  input = gets.chomp
  game.reset_cards

  break if input == 'нет'
end
