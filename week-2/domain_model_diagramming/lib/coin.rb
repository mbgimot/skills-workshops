class Coin

  def initialize
    @randomiser = Randomiser.new
  end

  def flip_coin
    @randomiser.random_flip < 50
  end

end
