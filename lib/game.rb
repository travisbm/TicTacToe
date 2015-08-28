class Game
  attr_reader :x_o_p1, :x_o_p2

  def initialize
    @playmode
    @x_o_p1
    @x_o_p2
  end

  def playmode
    print "Would you like to play against the (C)omputer or another (H)uman > "
    @playmode = gets.chomp.upcase
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
  end
end
