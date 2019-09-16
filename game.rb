class Game
  attr_accessor :answering_player
  attr_reader :player1, :player2, :number1, :number2
  def initialize(answering_player, player1, player2)
    @answering_player = answering_player
    @player1 = player1
    @player2 = player2
  end

  def random_number_generators
    @number1 = rand(20)
    @number2 = rand(20)
  end

  def generate_question
    "#{self.answering_player}: What does #{self.number1} plus #{self.number2} equal?"
  end

  def change_answering_player
    if answering_player == player1
      self.answering_player = player2
    else
      self.answering_player = player1
    end
  end
end