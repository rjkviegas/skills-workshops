require 'car'

RSpec.describe Car do

  let(:valid_person)    { double('a person', full_name: 'Albus Dumbledore', legal_driver?: true) }
  let(:underage_person) { double('a child', legal_driver?: false) }
  let(:engine)          { double('an engine', start: true, stop: false) }
  let(:motor)           { double('a motor', speed: 10) }
  let(:storage)         { double('a storage') }

  let(:car_config) do
    {
      engine: engine,
      motor: motor,
      passenger_storage: storage
    }
  end

  subject(:car) { described_class.new(driver: valid_person, config: car_config) }

  describe '#driver=' do
    let(:valid_person2)    { double('another person', first_name: 'Gellert', last_name: 'Grindlewald', legal_driver?: true) }

    it 'can set a valid driver' do
      expect(car.driver = valid_person2).to eq valid_person2
    end

    it 'throws error when driver not of age' do
      expect { car.driver = underage_person }.to raise_error('Driver Age Error')
    end
  end

  describe '#driver_name' do
    it 'asks person for full name' do
      expect(car.driver_name).to eq 'Albus Dumbledore'
    end
  end

  describe '#turn_on_engine' do
    it 'tells engine to turn on'  do
      expect(car.turn_on_engine).to eq true
    end
  end

  describe '#turn_off_engine' do
    it 'tells engine to turn off' do
      expect(car.turn_off_engine).to eq false
    end
  end

  describe '#accelerate' do
    it 'thows error when engine off' do
      allow(engine).to receive(:on?).and_return(false)

      expect { car.accelerate(3, 3) }.to raise_error('Engine Off Error')
    end

    it 'tells motor to speed up' do
      allow(engine).to receive(:on?).and_return(true)
      allow(motor).to receive(:accelerate).with(anything, anything).and_return(5)

      expect(car.accelerate(2, 5)).to eq 5
    end
  end

  describe '#brake' do
    it 'thows error when engine off' do
      allow(engine).to receive(:on?).and_return(false)

      expect { car.brake(3) }.to raise_error('Engine Off Error')
    end

    it 'tells motor to brake' do
      allow(engine).to receive(:on?).and_return(true)
      allow(motor).to receive(:brake).with(anything).and_return(5)

      expect(car.brake(3)).to eq 5
    end
  end

  describe '#add' do
    it 'tells storage to add a passenger' do
      allow(storage).to receive(:add).and_return(true)

      expect(car.add(underage_person)).to eq true
    end
  end
end
