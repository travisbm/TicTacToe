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
      x_o_computer
      one_player
    else
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

  def x_o_computer
    loop do
      print "Player one, would you like to be (X)'s or (O)'s > "
      @x_o_p1 = gets.chomp.upcase
      if @x_o_p1 != "X" && @x_o_p1 != "O"
        puts "NO SIR! invalid choice"
      end
      break if @x_o_p1 == "X" || @x_o_p1 == "O"
    end

    puts "\n\nYou've chosen #{@x_o_p1}'s."

    if @x_o_p1 == "X"
      puts "\n\nThe computer will be (O)'s. Good Luck!"
      @x_o_p2 = "O"
    else @x_o_p1 == "O"
      puts "\n\nThe computer will be (X)'s. Good Luck!"
      @x_o_p2 = "X"
    end

    @board.print_board
  end

  def one_player
    4.times do
      loop do
        print "Player 1 choose a number 1 - 9 to place your #{@x_o_p1} in that position > "
        position = gets.chomp.to_i
        if !position.between?(1, 9)
          puts "NO SIR! invalid choice"
        elsif !@board.choice(position, @x_o_p1)
          puts "That position has been played. Please choose another."
        else
          @board.choice(position, @x_o_p1)
          system("clear")
          @board.print_board
          @board.check_for_win
          break
        end
      end
      break if @board.win

      loop do
        position = rand(0..9)
        if !@board.choice(position, @x_o_p2)

        else
          @board.choice(position, @x_o_p2)
          system("clear")
          @board.print_board
          @board.check_for_win
          break
        end
      end
      break if @board.win
    end
    if !@board.win
    puts "Cats Game!"
    end
  end

  def two_player
    4.times do
      loop do
        print "Player 1 choose a number 1 - 9 to place your #{@x_o_p1} in that position > "
        position = gets.chomp.to_i
        if !position.between?(1, 9)
          puts "NO SIR! invalid choice"
        elsif !@board.choice(position, @x_o_p1)
          puts "That position has been played. Please choose another."
        else
          @board.choice(position, @x_o_p1)
          system("clear")
          @board.print_board
          @board.check_for_win
          break
        end
      end
      break if @board.win

      loop do
        print "Player 2 choose a number 1 - 9 to place your #{@x_o_p2} in that position > "
        position = gets.chomp.to_i
        if !position.between?(1, 9)
          puts "NO SIR! invalid choice"
        elsif !@board.choice(position, @x_o_p2)
          puts "That position has been played. Please choose another."
        else
          @board.choice(position, @x_o_p2)
          system("clear")
          @board.print_board
          @board.check_for_win
          break
        end
      end
      break if @board.win
    end
    if !@board.win
    puts "Cats Game!"
    end
  end
end
