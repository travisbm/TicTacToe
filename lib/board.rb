class Board
  attr_reader :win
  attr_accessor :board  # => nil

  def initialize
    @win = false
    @board = Array.new(3).map!{ Array.new(3) }
    k = 1
    for i in 0..2
      for j in 0..2
        @board[i][j] = k
        k += 1
      end
    end
  end

  def print_board
    puts   "\n#{@board[0][0]}      #{@board[0][1]}      #{@board[0][2]}\n\n"

    puts     "#{@board[1][0]}      #{@board[1][1]}      #{@board[1][2]}\n\n"

    puts     "#{@board[2][0]}      #{@board[2][1]}      #{@board[2][2]}\n\n"
  end

  def choice(num, x_o)

    case num

    when 1
      @board[0][0] = x_o
    when 2
      @board[0][1] = x_o
    when 3
      @board[0][2] = x_o
    when 4
      @board[1][0] = x_o
    when 5
      @board[1][1] = x_o
    when 6
      @board[1][2] = x_o
    when 7
      @board[2][0] = x_o
    when 8
      @board[2][1] = x_o
    when 9
      @board[2][2] = x_o
    else
      puts "NO SIR! invalid choice"
    end
  end

  def check_for_win
    if @board[0][0] == @board[0][1] && @board[0][0] == @board[0][2] ||
       @board[0][0] == @board[1][0] && @board[0][0] == @board[2][0] ||
       @board[0][0] == @board[1][1] && @board[0][0] == @board[2][2]
       print_winner("#{@board[0][0]}")
       @win = true
    elsif
       @board[0][1] == @board[1][1] && @board[0][1] == @board[2][1]
       print_winner("#{@board[0][1]}")
       @win = true
    elsif
       @board[0][2] == @board[1][2] && @board[0][2] == @board[2][2]
       print_winner("#{@board[0][2]}")
       @win = true
    elsif
       @board[1][0] == @board[1][1] && @board[1][0] == @board[1][2]
       print_winner("#{@board[1][0]}")
       @win = true
    elsif
       @board[2][0] == @board[2][1] && @board[2][0] == @board[2][2]
       print_winner("#{@board[2][0]}")
       @win = true
    end
   end

   def print_winner(x_o)
    if x_o == "X"
      puts "X is the winner!"
    elsif x_o == "O"
      puts "O is the winner!"
    else
      puts "Cats Game!"
    end
  end





end
