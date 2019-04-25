require_relative '../lib/board.rb'

RSpec.describe Board do
    describe "#full?" do
        it "checks if the whole 3x3 grid is full" do
            board = Board.new([1,2,3,4,5,6,7,8,9])
            expect(board.full?).to eql(false)
        end
    end

    describe "#place_taken?" do
        it "checks if a specific grid is already filled" do
            board = Board.new([1,2,3,4,5,6,7,8,9])
            board.environ[3] = "X"
            expect(board.place_taken?(3)).to eql(true)
        end
    end
end