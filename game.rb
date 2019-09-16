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
    puts "#{self.answering_player}: What does #{self.number1} plus #{self.number2} equal?"
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
    message = "#{self.player1}: #{self.player1_score}/3 vs #{self.player2}: #{self.player2_score}/3"
    if check_answer?
      puts "#{self.answering_player}: YES! You are correct."
      puts "#{self.player1}: #{self.player1_score}/3 vs #{self.player2}: #{self.player2_score}/3"
    else
      if self.answering_player == self.player1
        self.player1_score -=1
        puts "#{self.answering_player}: Seriously? No!"
        puts "#{self.player1}: #{self.player1_score}/3 vs #{self.player2}: #{self.player2_score}/3"
      else
        self.player2_score -=1
        puts "#{self.answering_player}: Seriously? No!"
        puts "#{self.player1}: #{self.player1_score}/3 vs #{self.player2}: #{self.player2_score}/3"
      end
    end
  end

  def end_game
    if player1_score == 0
      puts "#{player2} wins with a score of #{player2_score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    elsif player2_score ==0
      "#{player1} wins with a score of #{player1_score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "----- NEW TURN -----"
    end
  end

end