class Car
  def initialize(config: config, driver:)
    @driver = driver
    @engine = config[:engine]
    @motor = config[:motor]
    @passenger_storage = config[:passenger_storage]
  end

  def driver=(person)
    fail 'Driver Age Error' unless person.legal_driver?

    @driver = person
  end

  def driver_name
    driver.full_name
  end

  def turn_on_engine
    engine.start
  end

  def turn_off_engine
    engine.stop
  end

  def speed
    motor.speed
  end

  def accelerate(increment, seconds)
    fail 'Engine Off Error' unless engine.on?

    motor.accelerate(increment, seconds)
  end

  def brake(seconds)
    fail 'Engine Off Error' unless engine.on?

    motor.brake(seconds)
  end

  def add(passenger)
    passenger_storage.add(passenger)
  end

  private

  attr_reader :passenger_storage, :motor, :engine, :driver
end
