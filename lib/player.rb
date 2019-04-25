require_relative '..\lib\module_ui.rb'
class Player
  attr_reader :player_move
  attr_reader :name, :icon
  def initialize(name, icon)
    @name = name
    @icon = icon
    @player_move = []
  end
  include UserInterface
end
