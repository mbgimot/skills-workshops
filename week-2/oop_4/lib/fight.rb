module Fight
  def fight(challenger)
    challenger.strength < self.strength ? "you win" : "you loose"
  end
end
