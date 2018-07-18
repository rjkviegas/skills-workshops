require 'docking_station'

describe DockingStation do
  describe '#working_bike_count' do
    context '1 working bike' do
      it "returns 1" do
        bikes = []
        working_bike = double('working bike', working?: true)

        bikes << working_bike

        docking_station = DockingStation.new(bikes)

        expect(docking_station.working_bike_count).to eq(1)
      end
    end

    context '1 working bike, 1 broken bike' do
      it "returns 1" do
        bikes = []
        working_bike = double('working bike', working?: true)
        broken_bike = double('broken bike', working?: false)

        bikes << working_bike
        bikes << broken_bike

        docking_station = DockingStation.new(bikes)

        expect(docking_station.working_bike_count).to eq(1)
      end
    end
  end

  describe '#random_bike_working?' do
    context 'random bike is working' do
      it 'returns true' do
        working_bike = double('working bike', working?: true)
        allow_any_instance_of(Array).to receive(:sample) { working_bike }

        docking_station = DockingStation.new([working_bike])

        expect(docking_station.random_bike_working?).to eq(true)
      end
    end

    context 'random bike is broken' do
      it 'returns false' do
        broken_bike = double('working bike', working?: false)
        allow_any_instance_of(Array).to receive(:sample) { broken_bike }

        docking_station = DockingStation.new([broken_bike])

        expect(docking_station.random_bike_working?).to eq(false)
      end
    end
  end
end
