class Car

  def initialize
    @current_speed = 0
  end

  def speed_up(speed)
    @current_speed += speed
  end

  def brake(speed)
    @current_speed -= speed
  end

  def current_speed
    @current_speed
  end
end
