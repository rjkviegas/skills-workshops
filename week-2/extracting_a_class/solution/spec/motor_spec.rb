require 'motor'

RSpec.describe Motor do
  let(:top_speed) { 80 }
  subject(:motor) { described_class.new(top_speed) }

  describe '#accelerate' do
    it 'increases speed' do
      expect { motor.accelerate(1, 15) }.to change { motor.speed }.by(15)
    end

    it 'does not go over top speed' do
      motor.accelerate(5, 40)

      expect(motor.speed <= top_speed).to eq true
    end
  end

  describe '#brake' do
    it 'decreases speed' do
      motor.accelerate(2, 6)

      expect { motor.brake(3) }.to change { motor.speed }.by(-3)
    end

    it 'can not go negative speed' do
      motor.brake(100)

      expect(motor.speed.negative?).to eq false
    end
  end
end
