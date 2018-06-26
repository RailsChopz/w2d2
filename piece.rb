class Piece

  def initialize(type)
    @type = type
  end

end


class NullPiece < Piece
  def initialize
    @type = nil
  end
end
