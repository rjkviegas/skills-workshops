# bike.rb

class Bike
  def initialize
    @broken = false
  end

  def working?
    !@broken
  end
end

# docking_station.rb

class DockingStation
  def initialize(bikes)
    @bikes = bikes
  end

  def working_bike_count
    @bikes.select(&:working?).count
  end
end

# example_usage.rb

bike = Bike.new
docking_station = DockingStation.new([bike])
p "Working bike count: #{docking_station.working_bike_count}"

# bike_spec.rb

describe Bike do
  it "reports newly created bike is working" do
    expect(subject.working?).to eq(true)
  end
end

# docking_station_spec.rb

class BikeDouble
  def working?
    true
  end
end

describe DockingStation do
  let(:bike) { BikeDouble.new }
  subject { DockingStation.new([bike]) }

  it "returns 1 when when working bike" do
    expect(subject.working_bike_count).to eq(1)
  end
end
