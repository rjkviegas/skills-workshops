class Garage

  def initialize
    @cars = [
      {registration_plate: 'BD51 SMR', make: 'honda'},
      {registration_plate: 'LD10 RXS', make: 'ford'},
      {registration_plate: 'SE60 TSW', make: 'honda'}
    ]
  end

  def cars
    @cars.each { |car|
      puts car
    }
  end

  def add(car)
    @cars << car
  end

  def find_car(car_reg)
    @cars.each { |car|
      return car if car[:registration_plate] == car_reg
    }
  end

  def all_cars_by_make(make)
    cars_by_make = []
    @cars.each { |car|
      if car[:make] == make
        cars_by_make << car
      end
    }
    cars_by_make
  end

  def remove_car(car_reg)
    @cars.each { |car|
      if car[:registration_plate] == car_reg
        @cars.delete_at(@cars.index(car))
        break
      end
    }
  end
end
