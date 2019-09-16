require "./game"
require "./player"

andrew = Player.new("Andrew")
robert = Player.new("Robert")

game = Game.new(andrew, andrew, robert)

while (game.player1_score != 0) && (game.player2_score != 0)
  game.random_number_generators
  game.generate_question
  game.generate_response
  game.end_game
  game.change_answering_player
end
