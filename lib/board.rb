require_relative '..\lib\module_ui.rb'
class Board
  attr_accessor :environ
  def initialize(environ)
    @environ = environ
  end

  def display_board
    "  #{environ[6]} | #{environ[7]} | #{environ[8]}\n"+
    " ---|---|---\n"+
    "  #{environ[3]} | #{environ[4]} | #{environ[5]}\n"+
    " ---|---|---\n"+
    "  #{environ[0]} | #{environ[1]} | #{environ[2]}"
  end
  def full?
    environ.all? { |a| a.is_a?(String) }
  end

  def place_taken?(num)
    environ[num] == 'X' || environ[num] == 'O'
  end

  def fill(pos, icon)
    @environ[pos] = icon
  end
end
