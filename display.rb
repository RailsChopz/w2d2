require 'colorize'
require_relative 'cursor'
require_relative 'board'

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    system("clear")
    #display the Board
    # puts "   0  |  1  |  2  |  3  |  4  |  5  |  6  |  7 "
    # puts "-----------------------------------------------"
    # puts "\n"
    # puts " 0"
    # puts "\n"
    # puts " 1"
    # puts "\n"
    # puts " 2"
    # puts "\n"
    # puts " 3"
    # puts "\n"
    # puts " 4"
    # puts "\n"
    # puts " 5"
    # puts "\n"
    # puts " 6"
    # puts "\n"
    # puts " 7"
    # puts "-----------------------------------------------"
    # puts "   0  |  1  |  2  |  3  |  4  |  5  |  6  |  7 "
    @board.grid.each do |row|
      row.each do |piece|
        print piece.to_s
      end
      puts "\n"
    end


    @cursor.get_input
  end

end
