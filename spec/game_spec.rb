# require 'spec_helper.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

RSpec.describe Game do

    let(:player1) { Player.new('John', 'X') }
    let(:player2) { Player.new('Joe', '0') }
    let(:board) { Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9]) }
    let(:game) { Game.new(player1, player2, board) }
  
    describe 'class game' do
  
      it 'winner?' do
        player1.player_move.push(1,2,3,7,8)
        player2.player_move.push(4,5)
        expect(game.winner?).to eq(player1.name)
      end
  
      it 'check win?' do
        player1.player_move.push(1,2,3,4,7,8)
        expect(game.win?(player1, [1,2,3])).to eq(true)
      end
      
    end
  end