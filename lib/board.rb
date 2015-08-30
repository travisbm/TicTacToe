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
      if @board[0][0] == "X" || @board[0][0] == "O"
        return false
      else
      @board[0][0] = x_o
      end
    when 2
      if @board[0][1] == "X" || @board[0][1] == "O"
        return false
      else
      @board[0][1] = x_o
      end
    when 3
      if @board[0][2] == "X" || @board[0][2] == "O"
        return false
      else
      @board[0][2] = x_o
      end
    when 4
      if @board[1][0] == "X" || @board[1][0] == "O"
        return false
      else
      @board[1][0] = x_o
      end
    when 5
      if @board[1][1] == "X" || @board[1][1] == "O"
        return false
      else
      @board[1][1] = x_o
      end
    when 6
      if @board[1][2] == "X" || @board[1][2] == "O"
        return false
      else
      @board[1][2] = x_o
      end
    when 7
      if @board[2][0] == "X" || @board[2][0] == "O"
        return false
      else
      @board[2][0] = x_o
      end
    when 8
      if @board[2][1] == "X" || @board[2][1] == "O"
        return false
      else
      @board[2][1] = x_o
      end
    when 9
      if @board[2][2] == "X" || @board[2][2] == "O"
        return false
      else
      @board[2][2] = x_o
      end
    end
  end

  def check_for_win
    if @board[1][1] == @board[0][1] && @board[1][1] == @board[2][1] ||
       @board[1][1] == @board[1][0] && @board[1][1] == @board[1][2] ||
       @board[1][1] == @board[0][0] && @board[1][1] == @board[2][2] ||
       @board[1][1] == @board[0][2] && @board[1][1] == @board[2][0]
       print_winner("#{@board[1][1]}")
       @win = true
    elsif
       @board[0][0] == @board[0][1] && @board[0][0] == @board[0][2] ||
       @board[0][0] == @board[1][0] && @board[0][0] == @board[2][0]
       print_winner("#{@board[0][0]}")
       @win = true
    elsif
       @board[2][2] == @board[2][1] && @board[2][2] == @board[2][0] ||
       @board[2][2] == @board[1][2] && @board[2][2] == @board[0][2]
       print_winner("#{@board[2][2]}")
       @win = true
    end
  end

  def print_winner(x_o)
    if x_o == "X"
      puts "X is the winner!"
    else
      puts "O is the winner!"
    end
  end
end
