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

puts "Привет #{player.name}, начнем игру!"

Game.new(player, dealer)

puts "Ваши карты: #{player.cards}"
