require_relative '../lib/board'  # => true

puts "\n\nLet's play a game of Tic-Tac-Toe.\n\n"  # => nil
print "Would you like to be (X)'s or (O)'s > "    # => nil

choice = gets.chomp.upcase                        # ~> NoMethodError: undefined method `chomp' for nil:NilClass
puts "\n\nYou've chosen #{choice}'s. Good Luck!"

board = Board.new
board.print_board
3.times do

print "Choose a number 1 - 9 to place your #{choice} in that position > "
position = gets.chomp


board.choice(position.to_i, choice)

board.print_board

end
