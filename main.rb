require "./game"
require "./player"

andrew = Player.new("Andrew")
robert = Player.new("Robert")

puts andrew.name
puts robert.name

game = Game.new(andrew, andrew, robert)

puts game.answering_player
puts game.player1
puts game.player2
