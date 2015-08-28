require_relative '../lib/board'  # => true
require_relative '../lib/game'  # => true

system("clear")  # => false

puts "Let's play a game of Tic-Tac-Toe.\n\n"  # => nil

game = Game.new
game.playmode

system("clear")

game.x_o

board = Board.new
board.print_board

4.times do

#loop do
  print "Player 1 choose a number 1 - 9 to place your #{game.x_o_p1} in that position > "
  position = gets.chomp.to_i
    if !position.between?(1, 9)
      puts "NO SIR! invalid choice"
    else
      board.choice(position, game.x_o_p1)
      system("clear")
      board.print_board
      board.check_for_win
      break if board.win
    end
#end

#loop do
  print "Player 2 choose a number 1 - 9 to place your #{game.x_o_p2} in that position > "
  position = gets.chomp.to_i
    if !position.between?(1, 9)
      puts "NO SIR! invalid choice"
    else
      board.choice(position, game.x_o_p2)
      system("clear")
      board.print_board
      board.check_for_win
      break if board.win
    end
#end

end

