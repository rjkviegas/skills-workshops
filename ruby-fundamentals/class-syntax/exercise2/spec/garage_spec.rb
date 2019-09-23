require 'garage'

RSpec.describe Garage do
  it "can display a list of cars" do
    garage = Garage.new

    expect(garage.cars).to eq([
      {'registration_plate': 'BD51 SMR', 'make': 'honda'},
      {'registration_plate': 'LD10 RXS', 'make': 'ford'},
      {'registration_plate': 'SE60 TSW', 'make': 'honda'}
    ])
  end

  it "can add a new car" do
    garage = Garage.new

    garage.add({'registration_plate': 'UL61 POL', 'make': 'BMW'})

    expect(garage.cars).to eq([
      {'registration_plate': 'BD51 SMR', 'make': 'honda'},
      {'registration_plate': 'LD10 RXS', 'make': 'ford'},
      {'registration_plate': 'SE60 TSW', 'make': 'honda'},
      {'registration_plate': 'UL61 POL', 'make': 'BMW'}
    ])
  end

  it "can find a car by registration plate" do
    garage = Garage.new

    car = garage.find('BD51 SMR')

    expect(car).to eq({'registration_plate': 'BD51 SMR', 'make': 'honda'})
  end

  it "can remove a car by registration plate" do
    garage = Garage.new

    garage.remove('SE60 TSW')

    expect(garage.cars).to eq([
      {'registration_plate': 'BD51 SMR', 'make': 'honda'},
      {'registration_plate': 'LD10 RXS', 'make': 'ford'}
    ])
  end

  it "can find cars by make" do
    garage = Garage.new

    hondas = garage.all_of_make('honda')

    expect(hondas).to eq([
      {'registration_plate': 'BD51 SMR', 'make': 'honda'},
      {'registration_plate': 'SE60 TSW', 'make': 'honda'}
    ])
  end
end
