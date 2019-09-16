class Game
  attr_accessor :answering_player, :player1_score, :player2_score
  attr_reader :player1, :player2, :number1, :number2
  def initialize(answering_player, player1, player2)
    @answering_player = answering_player
    @player1 = player1
    @player1_score = 3
    @player2 = player2
    @player2_score = 3
  end

  def random_number_generators
    @number1 = rand(20)
    @number2 = rand(20)
  end

  def generate_question
    "#{self.answering_player}: What does #{self.number1} plus #{self.number2} equal?"
  end

  def change_answering_player
    if self.answering_player == self.player1
      self.answering_player = self.player2
    else
      self.answering_player = self.player1
    end
  end

  def check_answer?
    @answer = self.number1 + self.number2
    user_response = gets.chomp.to_i
    if user_response == @answer
      return true
    else
      return false
    end
  end
  
  def generate_response
    if check_answer?
      return "#{self.answering_player}: YES! You are correct."
    else
      if self.answering_player == self.player1
        puts player1_score
        self.player1_score -=1
        puts player1_score
        return "#{self.answering_player}: Seriously? No!"
      else
        puts player2_score
        self.player2_score -=1
        puts player2_score
        return "#{self.answering_player}: Seriously? No!"
      end
    end
  end

  def change_player_score
  end

end