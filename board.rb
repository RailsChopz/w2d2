class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
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
    raise StandardError if self[start_pos] == nil
    raise StandardError unless self[end_pos] == nil
    current = self[start_pos]
    self[end_pos] = current
    self[start_pos] = nil
  end

end
