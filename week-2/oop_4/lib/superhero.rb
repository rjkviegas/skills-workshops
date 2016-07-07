class Superhero
  def initialize(name, power)
    @name = name
    @power = power
  end

  def use_power
    p "#{ @name } is now #{ @power }!"
  end
end

flash = Superhero.new("The Flash", "running real fast")
flash.use_power # => "The Flash is now running real fast!"

santa = Superhero.new("Santa Claus", "running real fast")
santa.use_power # => "Santa Claus is now running real fast!"

batman = Superhero.new("Batman", "wealthy and sad :(")
batman.use_power # => "Batman is now wealthy and sad :(!"