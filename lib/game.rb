require_relative '../lib/board'  # => true

class Game
  attr_reader :x_o_p1, :x_o_p2  # => nil

  def initialize(board)
    @board = board
    @playmode
    @x_o_p1
    @x_o_p2
  end

  def playmode
    print "Would you like to play against the (C)omputer or another (H)uman > "
    @playmode = gets.chomp.upcase
    if @playmode == "C"
      puts "You still haven't written an AI dumb dumb.."
    else
      puts "You are in else"
      x_o
      two_player
    end
  end

  def x_o
    loop do
      print "Player one, would you like to be (X)'s or (O)'s > "
      @x_o_p1 = gets.chomp.upcase
      if @x_o_p1 != "X" && @x_o_p1 != "O"
        puts "NO SIR! invalid choice"
      end
      break if @x_o_p1 == "X" || @x_o_p1 == "O"
    end

    puts "\n\nYou've chosen #{@x_o_p1}'s. Good Luck!"

    if @x_o_p1 == "X"
      puts "\n\nPlayer two, you will be (O)'s. Good Luck!"
      @x_o_p2 = "O"
    else @x_o_p1 == "O"
      puts "\n\nPlayer two, you will be (X)'s. Good Luck!"
      @x_o_p2 = "X"
    end

    @board.print_board
  end

  def two_player
    4.times do
      print "Player 1 choose a number 1 - 9 to place your #{@x_o_p1} in that position > "
      position = gets.chomp.to_i
        if !position.between?(1, 9)
          puts "NO SIR! invalid choice"
        else
          @board.choice(position, @x_o_p1)
          system("clear")
          @board.print_board
          @board.check_for_win
          break if @board.win
        end

      print "Player 2 choose a number 1 - 9 to place your #{@x_o_p2} in that position > "
      position = gets.chomp.to_i
      if !position.between?(1, 9)
        puts "NO SIR! invalid choice"
      else
        @board.choice(position, @x_o_p2)
        system("clear")
        @board.print_board
        @board.check_for_win
        break if @board.win
      end
    end
  end
end
