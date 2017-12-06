require './questions'
class Game

    attr_reader :player1, :player2

    def initialize (player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def game_start

        while player1.health > 0 && player2.health > 0
            question = Questions.new
            puts "Player 1: #{question.question}"
            if gets.chomp.to_i == question.answer
                puts 'Correct'
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3"
            else
                puts 'Incorrect'
                player1.health -= 1
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3"
            end

            puts '----- NEW TURN -----'
            question = Questions.new
            puts "Player 2: #{question.question}"
            if gets.chomp.to_i == question.answer
                puts 'Correct'
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3"
            else
                puts 'Incorrect'
                player2.health -= 1
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3"
            end
            puts '----- NEW TURN -----'
            # byebug
        end

        if player1.health > player2.health
            puts "Player 1 wins with a score of #{player1.health}"
        elsif player1.health == player2.health
            puts "Player 1 and Player 2 tied!"
        else
            puts "Player 2 wins with a score of #{player2.health}"
        end
        puts '----- GAME OVER -----'
        puts 'Good bye!'
    end

end
