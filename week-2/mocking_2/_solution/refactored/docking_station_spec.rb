describe DockingStation do
  let(:working_bike)        { double('working bike', working?: true) }
  let(:broken_bike)         { double('broken bike', working?: false) }

  subject(:docking_station) { described_class.new(bikes) }

  describe '#working_bike_count' do
    context '1 working bike' do
      let(:bikes) { [working_bike] }

      it "returns 1" do
        expect(docking_station.working_bike_count).to eq(1)
      end
    end

    context '1 working bike, 1 broken bike' do
      let(:bikes) { [working_bike, broken_bike] }

      it "returns 1" do
        expect(docking_station.working_bike_count).to eq(1)
      end
    end
  end

  describe '#random_bike_working?' do
    let(:bikes) { [working_bike, broken_bike] }

    context 'random bike is working' do
      it 'returns true' do
        srand(1) # this argument may need to change

        expect(docking_station.random_bike_working?).to eq(true)
      end
    end

    context 'random bike is broken' do
      it 'returns false' do
        srand(2) # this argument may need to change

        expect(docking_station.random_bike_working?).to eq(false)
      end
    end
  end
end
