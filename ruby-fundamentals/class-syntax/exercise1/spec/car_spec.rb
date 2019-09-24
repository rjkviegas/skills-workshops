require 'car'

RSpec.describe Car do
  it "is an instance of Car class" do
    car = Car.new

    expect(car).to be_a(Car)
  end

  it "reports its current speed" do
    car = Car.new

    expect(car.speed).to eq(0)
  end

  it "can accelerate" do
    car = Car.new

    car.accelerate(10)

    expect(car.speed).to eq(10)
  end

  it "can brake" do
    car = Car.new
    car.accelerate(20)

    car.brake(5)

    expect(car.speed).to eq(15)
  end
end
