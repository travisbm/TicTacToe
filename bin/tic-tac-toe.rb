require_relative '../lib/board'  # => true

puts "\n\nLet's play a game of Tic-Tac-Toe.\n\n"  # => nil

print "Player one, would you like to be (X)'s or (O)'s > "  # => nil

choice1 = gets.chomp.upcase                        # ~> NoMethodError: undefined method `chomp' for nil:NilClass
puts "\n\nYou've chosen #{choice1}'s. Good Luck!"

print "Player two, would you like to be (X)'s or (O)'s > "

choice2 = gets.chomp.upcase
puts "\n\nYou've chosen #{choice2}'s. Good Luck!"

board = Board.new
board.print_board
4.times do

print "Player 1 choose a number 1 - 9 to place your #{choice1} in that position > "
position = gets.chomp
board.choice(position.to_i, choice1)

board.print_board

board.check_for_win

print "Player 2 choose a number 1 - 9 to place your #{choice2} in that position > "
position = gets.chomp
board.choice(position.to_i, choice2)

board.print_board

board.check_for_win

end

puts "Cat's Game!"

# >>
# >>
# >> Let's play a game of Tic-Tac-Toe.
# >>
# >> Player one, would you like to be (X)'s or (O)'s >

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/Britton/theironyard/TicTacToe/bin/tic-tac-toe.rb:7:in `<main>'
