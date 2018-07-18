class Motor
  TOP_SPEED_DEFAULT = 120

  attr_reader :speed

  def initialize(top_speed = TOP_SPEED_DEFAULT)
    @top_speed = top_speed
    @speed = 0
  end

  def accelerate(increment, seconds)
    seconds.times do
      break if speed >= top_speed
      @speed += increment
    end
  end

  def brake(seconds)
    seconds.times do
      break if speed <= 1
      @speed -= 1
    end
  end

  private

  attr_reader :top_speed
end
