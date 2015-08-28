require_relative '../lib/board'  # => true
require_relative '../lib/game'  # => true

system("clear")  # => false

puts "Let's play a game of Tic-Tac-Toe.\n\n"  # => nil

board = Board.new
game = Game.new(board)

game.playmode

