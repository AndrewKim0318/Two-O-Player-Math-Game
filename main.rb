require "./game"
require "./player"

andrew = Player.new("Andrew")
robert = Player.new("Robert")

puts andrew.name
puts robert.name

game = Game.new(andrew, andrew, robert)

game.random_number_generators
game.generate_question
game.generate_response


game.change_answering_player
game.random_number_generators
game.generate_question
game.generate_response
