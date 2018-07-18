class Car
  PASSENGER_LIMIT_DEFAULT = 4
  TOP_SPEED_DEFAULT = 120

  attr_reader :speed, :passengers, :engine_on

  def initialize(config)
    @top_speed = config[:top_speed] || TOP_SPEED_DEFAULT
    @passenger_limit = config[:passenger_limit] || PASSENGER_LIMIT_DEFAULT
    @speed = 0
    @engine_on = false
    @passengers = []
  end

  def driver=(person)
    fail 'Driver Age Error' unless person.age > 18

    @driver = person
  end

  def driver_name
    fail 'No Driver Error' if driver.nil?

    "#{driver.first_name} #{driver.last_name}"
  end

  def turn_on_engine
    fail 'No Driver Error' if driver.nil?

    @engine_on = true
  end

  def turn_off_engine
    fail 'No Driver Error' if driver.nil?

    @engine_on = false
  end

  def accelerate(increment, seconds)
    fail 'Engine Off Error' unless engine_on

    seconds.times do
      break if speed >= top_speed
      @speed += increment
    end
  end

  def brake(seconds)
    fail 'Engine Off Error' unless engine_on

    seconds.times do
      break if speed <= 1
      @speed -= 1
    end
  end

  def add(passenger)
    fail 'Limit Reached Error' if passengers.count >= passenger_limit

    @passengers << passenger
  end

  private

  attr_reader :passenger_limit, :top_speed, :driver
end
