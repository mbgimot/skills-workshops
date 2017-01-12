require_relative 'fight'

class Superhero
  attr_reader :strength

  include Fight

  def initialize(name, power, strength)
    @name = name
    @power = power
    @strength = strength
  end

  def use_power
    p "#{ @name } is now #{ @power }!"
  end

end

flash = Superhero.new("The Flash", "running real fast", 6)
flash.use_power # => "The Flash is now running real fast!"

santa = Superhero.new("Santa Claus", "running real fast", 3)
santa.use_power # => "Santa Claus is now running real fast!"

batman = Superhero.new("Batman", "wealthy and sad :(", 8)
batman.use_power # => "Batman is now wealthy and sad :(!"
