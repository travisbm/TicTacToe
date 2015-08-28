require_relative '../lib/board'  # => true

system("clear")  # => false

puts "Let's play a game of Tic-Tac-Toe.\n\n"  # => nil

print "Would you like to play against the (C)omputer or another (H)uman > "
answer = gets.chomp.upcase

system("clear")

choice1 = ""
loop do
print "Player one, would you like to be (X)'s or (O)'s > "  # => nil
choice1 = gets.chomp.upcase
  if choice1 != "X" && choice1 != "O"
    puts "NO SIR! invalid choice"
  end
break if choice1 == "X" || choice1 == "O"
end

puts "\n\nYou've chosen #{choice1}'s. Good Luck!"

  if choice1 == "X"
    puts "\n\nPlayer two, you will be (O)'s. Good Luck!"
    choice2 = "O"
  else choice1 == "O"
    puts "\n\nPlayer two, you will be (X)'s. Good Luck!"
    choice2 = "X"
  end


board = Board.new
board.print_board
4.times do

print "Player 1 choose a number 1 - 9 to place your #{choice1} in that position > "
position = gets.chomp
board.choice(position.to_i, choice1)

system("clear")

board.print_board

board.check_for_win

print "Player 2 choose a number 1 - 9 to place your #{choice2} in that position > "
position = gets.chomp
board.choice(position.to_i, choice2)

system("clear")

board.print_board

board.check_for_win

end

puts "Cat's Game!"

# >>
# >>
# >> Let's play a game of Tic-Tac-Toe.
# >>
# >> Player one, would you like to be (X)'s or (O)'s >

# !> TERM environment variable not set.

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/Britton/theironyard/TicTacToe/bin/tic-tac-toe.rb:9:in `<main>'
