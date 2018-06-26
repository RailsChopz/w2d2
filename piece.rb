require 'singleton'

class Piece

  def initialize

  end

  def to_s
    " x "

  end

end


class NullPiece < Piece

  include Singleton

  def initialize

  end

  def to_s
    " _ "
  end

end
