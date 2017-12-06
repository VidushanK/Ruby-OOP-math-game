require './game'
require './players'
require './questions'

player1 = Players.new
player2 = Players.new

game = Game.new(player1, player2)
game.game_start
