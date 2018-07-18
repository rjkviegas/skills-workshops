require 'docking_station'

class MockWorkingBike
  def working?
    true
  end
end

class MockBrokenBike
  def working?
    false
  end
end

describe DockingStation do
  describe '#working_bike_count' do
    context '1 working bike' do
      it "returns 1" do
        bikes = []
        bikes << MockWorkingBike.new
        docking_station = DockingStation.new(bikes)

        expect(docking_station.working_bike_count).to eq(1)
      end
    end

    context '1 working bike, 1 broken bike' do
      it "returns 1" do
        bikes = []
        bikes << MockWorkingBike.new
        bikes << MockBrokenBike.new
        docking_station = DockingStation.new(bikes)

        expect(docking_station.working_bike_count).to eq(1)
      end
    end
  end

  describe '#random_bike_working?' do
    context 'random bike is working' do
      xit 'returns true' do
        working_bike = MockWorkingBike.new
        broken_bike = MockBrokenBike.new

        docking_station = DockingStation.new([working_bike, broken_bike])

        expect(docking_station.random_bike_working?).to eq(true)
      end
    end

    context 'random bike is broken' do
      xit 'returns false' do
        working_bike = MockWorkingBike.new
        broken_bike = MockBrokenBike.new

        docking_station = DockingStation.new([working_bike, broken_bike])

        expect(docking_station.random_bike_working?).to eq(false)
      end
    end
  end
end
