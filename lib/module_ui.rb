module UserInterface
    def move(player,board)
        puts "#{player.name} Enter your move"
        choice = gets.chomp.to_i
        if (1..9).cover?(choice)
          if board.place_taken?(choice-1)
            puts 'Place taken try again'
          else
            choice
          end
        else
          puts 'Enter a valid number'
        end
      end   
end