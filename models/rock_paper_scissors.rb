class Game

  def self.win_conditions(hand1, hand2)
    if hand1 == "rock" && hand2 == "scissors"
      return "Player 1 Wins with #{hand1}!"

    elsif hand1 == "scissors" && hand2 == "paper"
      return "Player 1 Wins with #{hand1}!"

    elsif hand1 == "paper" && hand2 == "rock"
      return "Player 1 Wins with #{hand1}!"

    elsif hand1 == "scissors" && hand2 == "rock"
      return "Player 2 Wins with #{hand2}!"

    elsif hand1 == "paper" && hand2 == "scissors"
      return "Player 2 Wins with #{hand2}!"

    elsif hand1 == "rock" && hand2 == "paper"
      return "Player 2 Wins with #{hand2}!"

    elsif hand1 || hand2 == "PLAYER_1" || "PLAYER_2"
      return "umm...you might want to read how to play?"

    else
      return "a draw!"
    end

  end

end
