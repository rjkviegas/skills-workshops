require 'weather'

class Airport

  attr_reader :planes

  def initialize(planes = [])
    @planes = planes
    @weather = Weather.new
  end

  def land(plane)
    check_weather("land")
    @planes.push(plane)
  end

  def take_off
    check_weather("take off")
    @planes.pop
    @planes
  end

  def plane_at_airport?(plane)
    @planes.include?(plane)
  end

  def check_weather(action)
    stormy = 2
    if @weather.generate == stormy
      raise "cannot #{action} due to stormy weather"
    else
      "perfect for flying"
    end
  end

end
