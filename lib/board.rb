class Board

  attr_accessor :board

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

end
