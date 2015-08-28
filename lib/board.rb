class Board

  attr_accessor :board  # => nil

  def initialize
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
    puts "\n\n#{@board[0][0]}      #{@board[0][1]}      #{@board[0][2]}\n\n"

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
       puts "#{@board[0][0]} wins!"
    elsif
       @board[0][1] == @board[1][1] && @board[0][1] == @board[2][1]
       puts "#{@board[0][1]} wins!"
    elsif
       @board[0][2] == @board[1][2] && @board[0][2] == @board[2][2]
       puts "#{@board[0][2]} wins!"
    elsif
       @board[1][0] == @board[1][1] && @board[1][0] == @board[1][2]
       puts "#{@board[1][0]} wins!"
    elsif
       @board[2][0] == @board[2][1] && @board[2][0] == @board[2][2]
       puts "#{@board[2][0]} wins!"
    end
   end
end
