## Exercise 1

Here is an implementation of the `Car` class:

```ruby
class Car
  def initialize
    @speed = 0
  end

  def speed
    @speed
  end

  def accelerate(mph)
    @speed += mph
  end

  def brake(mph)
    @speed -= mph
  end
end
```

## Exercise 2

Here is an implementation of the `Garage` class:

```ruby
class Garage
  def initialize
    @cars = [
      {registration_plate: 'BD51 SMR', make: 'honda'},
      {registration_plate: 'LD10 RXS', make: 'ford'},
      {registration_plate: 'SE60 TSW', make: 'honda'}
    ]
  end

  def cars
    @cars
  end

  def add(car)
    @cars.push(car)
  end

  def find(plate)
    @cars.find { |car| car[:registration_plate] == plate }
  end

  def remove(plate)
    @cars.delete_if { |car| car[:registration_plate] == plate }
  end

  def all_of_make(make)
    @cars.select { |car| car[:make] == make }
  end
end
```
