require 'car'

RSpec.describe Car do
  it "is available as described_class" do
    expect(described_class).to eq(Car)
  end

  it "should report its current speed" do
    car = Car.new
    expect(car.current_speed).to eq(0)
  end

  it "should be able to increase its current speed by 10" do
    car = Car.new
    car.speed_up(10)
    expect(car.current_speed).to eq(10)
  end

  it "should be able to increase its current speed by 20 and then decrease by 5" do
    car = Car.new
    car.speed_up(20)
    car.brake(5)
    expect(car.current_speed).to eq(15)
  end
end
