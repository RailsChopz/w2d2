require_relative "piece"

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    populate
  end

  def populate

    @grid.map!.with_index do |row, idx|
      row.map! do |el|
        if idx == 0 || idx == 1 || idx == 6 || idx == 7
          el = Piece.new
        else
          el = NullPiece.instance
        end
      end
    end
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, val)
    x, y = pos
    grid[x][y] = val
  end

  def move_piece(start_pos, end_pos)
    raise StandardError if self[start_pos].is_a?(NullPiece)
    raise StandardError unless self[end_pos].is_a?(NullPiece)
    current = self[start_pos]
    self[end_pos] = current
    self[start_pos] = NullPiece.instance
  end

  def valid_pos?(pos)
    x, y = pos
    return false if x < 0 || x > 7
    return false if y < 0 || y > 7
    true
  end

end
