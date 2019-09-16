class Game
  attr_accessor :answering_player
  attr_reader :player1, :player2
  def initialize(answering_player, player1, player2)
    @answering_player = answering_player
    @player1 = player1
    @player2 = player2
  end
end