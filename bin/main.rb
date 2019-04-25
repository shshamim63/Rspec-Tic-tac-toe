require_relative '..\lib\player.rb'
require_relative '..\lib\game.rb'
require_relative '..\lib\board.rb'

def create_player(player_symbol)
  print "Player who wish to choose #{player_symbol}:"
  name = gets.chomp
  Player.new(name, player_symbol)
end

#Instantiate objects:
def initiate_environment
  player_1 = create_player("X")
  player_2 = create_player("O")
  board = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
  game = Game.new(player_1, player_2, board)
  game.game_start
end

while true 
  initiate_environment
  puts 'Do you want to play again? : (Y/N)'
  wish = gets.chomp.to_s.upcase
  break if wish == 'N'
end
