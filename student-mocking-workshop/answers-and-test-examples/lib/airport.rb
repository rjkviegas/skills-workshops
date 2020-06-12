class Airport

  attr_reader :planes

  def initialize(planes = [], weather = Weather.new)
    @planes = planes
    @weather = weather
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
    if @weather.generate == 2
      raise "cannot #{action} due to stormy weather"
    else
      "perfect for flying"
    end
  end

end
