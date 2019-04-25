# require 'spec_helper.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

RSpec.describe Game do
    describe "#win?" do
        it "return the name of the winner if there's one" do
            player1 = Player.new("Shamim","X")
            player1.player_move = player1.player_move + [1,2,3,7,8]
            expect(win?(player1,[1,2,3])).to eql(true)
        end
    end
end