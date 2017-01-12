require_relative 'superhero.rb'
require_relative 'fight'

class Villain
  attr_reader :strength

  include Fight

  def initialize(name, power, strength)
    @name = name
    @power = power
    @strength = strength
  end

  def use_power
    p "#{ @name } now #{ @power }, villainously!"
  end

end

bain = Villain.new("Bain", "is nasty", 8)
bain.use_power # => "Bain is nasty villainously !"

santa = Superhero.new("Santa Claus", "running real fast", 3)
santa.fight(bain) # => "you win "
