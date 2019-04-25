require_relative '..\lib\player.rb'
require_relative '..\lib\board.rb'
class Game
  attr_reader :player1, :player2, :board, :turn, :result_combinations
  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
    @turn = 1
    @result_combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                            [1, 4, 7], [2, 5, 8], [3, 6, 9],
                            [1, 5, 9], [3, 5, 7]]
  end
  def game_start
    until (winner? || board.full?)
      turn == 1 ? play(player1) : play(player2)
      turn = turn == 1 ? 0 : 1
    end
    game_end
  end

  def game_end
    if winner?
      board.display_board
      puts "Winner is: #{winner?}"
    elsif board.full?
      board.display_board
      puts 'It is a tie'
    end
  end

  def winner?
    players = [player1, player2]
    players.each do |player|
      result_combinations.each do |combo|
        return player.name if win?(player,combo)
      end
    end
    false
  end

  def win?(player,combo)
    combo & player.player_move == combo
  end

  def play(player)
    loop do
      board.display_board
      valid_move = player.move(board)
      next unless valid_move

      board.fill(valid_move-1, player.icon)
      player.player_move.push(valid_move).sort!
      break
    end
  end
end
