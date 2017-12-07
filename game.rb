require './questions'
require 'colorize'

class Game

    attr_reader :player1, :player2

    def initialize (player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def game_start

        while player1.health > 0 && player2.health > 0
            question = Questions.new
            puts "Player 1: #{question.question}".yellow
            if gets.chomp.to_i == question.answer
                puts 'Correct'.green
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3".blue
            else
                puts 'Incorrect'.red
                player1.health -= 1
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3".blue
            end

            puts '----- NEW TURN -----'.light_blue
            question = Questions.new
            puts "Player 2: #{question.question}".yellow
            if gets.chomp.to_i == question.answer
                puts 'Correct'.green
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3".blue
            else
                puts 'Incorrect'.red
                player2.health -= 1
                puts "P1: #{player1.health}/3 vs P2: #{player2.health}/3".blue
            end
            puts '----- NEW TURN -----'.light_blue
        end

        if player1.health > player2.health
            puts "Player 1 wins with a score of #{player1.health}".blue
        elsif player1.health == player2.health
            puts "Player 1 and Player 2 tied!".green
        else
            puts "Player 2 wins with a score of #{player2.health}".blue
        end
        puts '----- GAME OVER -----'.red
        puts 'Good bye!'
    end

end
