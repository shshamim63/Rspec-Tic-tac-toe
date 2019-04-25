module UserInterface
    def display_board
        puts "  #{environ[6]} | #{environ[7]} | #{environ[8]}"
        puts ' ---|---|---'
        puts "  #{environ[3]} | #{environ[4]} | #{environ[5]}"
        puts ' ---|---|---'
        puts "  #{environ[0]} | #{environ[1]} | #{environ[2]}"
    end 
    
    def move(board)
        puts "#{name} Enter your move"
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