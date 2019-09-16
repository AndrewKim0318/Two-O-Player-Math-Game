require "./game"
require "./player"

andrew = Player.new("Andrew")
robert = Player.new("Robert")

puts andrew.name
puts robert.name

game = Game.new(andrew, andrew, robert)

game.random_number_generators
puts game.check_answer
puts game.generate_question

puts game.answering_player
game.change_answering_player
puts game.answering_player