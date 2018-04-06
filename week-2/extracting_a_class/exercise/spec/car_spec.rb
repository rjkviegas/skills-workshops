require 'car'

RSpec.describe Car do

  let(:valid_person)        { double('a person', first_name: 'Albus', last_name: 'Dumbledore', age: 20) }
  let(:underage_person)     { double('a child', age: 10) }
  let(:top_speed)           { nil }
  let(:passenger_limit)     { nil }

  let(:car_config) do
    {
      top_speed: top_speed,
      passenger_limit: passenger_limit,
    }
  end

  subject(:car) { described_class.new(car_config) }

  describe '#driver=' do
    it 'can set a valid driver' do
      expect(car.driver = valid_person).to eq valid_person
    end

    it 'throws error when driver not of age' do
      expect { car.driver = underage_person }.to raise_error('Driver Age Error')
    end
  end

  describe '#driver_name' do
    it 'returns full name' do
      car.driver = valid_person

      expect(car.driver_name).to eq "#{valid_person.first_name} #{valid_person.last_name}"
    end

    it 'throws error when no driver' do
      expect { car.driver_name}.to raise_error('No Driver Error')
    end
  end

  describe '#turn_on_engine' do
    it 'engine on'  do
      car.driver = valid_person

      expect { car.turn_on_engine }.to change { car.engine_on }.from(false).to(true)
    end

    it 'throws error when no driver' do
      expect { car.turn_on_engine}.to raise_error('No Driver Error')
    end
  end

  describe '#turn_off_engine' do
    it 'engine off' do
      car.driver = valid_person
      car.turn_on_engine

      expect { car.turn_off_engine }.to change { car.engine_on }.from(true).to(false)
    end

    it 'throws error when no driver' do
      expect { car.turn_on_engine}.to raise_error('No Driver Error')
    end
  end

  describe '#accelerate' do
    before { car.driver = valid_person }

    let(:top_speed) { 100 }

    it 'thows error when engine off' do
      expect { car.accelerate(3, 3) }.to raise_error('Engine Off Error')
    end

    it 'speeds up the car ' do
      car.turn_on_engine

      expect { car.accelerate(2, 5) }.to change { car.speed }.from(0).to(10)
    end

    it 'does not go over top speed' do
      car.turn_on_engine
      car.accelerate(5, 40)

      expect(car.speed <= top_speed).to eq true
    end
  end

  describe '#brake' do
    before { car.driver = valid_person }

    it 'thows error when engine off' do
      expect { car.brake(3) }.to raise_error('Engine Off Error')
    end

    it 'brakes up the car ' do
      car.turn_on_engine
      car.accelerate(5, 8)

      expect { car.brake(3) }.to change { car.speed }.from(40).to(37)
    end

    it 'can not go negative speed' do
      car.turn_on_engine
      car.brake(100)

      expect(car.speed.negative?).to eq false
    end
  end

  describe '#add' do
    it 'adds a passenger' do
      expect { car.add(underage_person) }.to change { car.passengers.include?(underage_person) }.from(false).to(true)
    end

    context 'is full' do
      let(:passenger_limit) { 0 }

      it 'throws error' do
        expect { car.add(underage_person) }.to raise_error('Limit Reached Error')
      end
    end
  end
end
