require_relative '..\lib\module_ui.rb'
class Board
  attr_accessor :environ
  def initialize(environ)
    @environ = environ
  end

  include UserInterface
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
