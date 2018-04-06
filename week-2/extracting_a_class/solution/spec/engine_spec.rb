require 'engine'

RSpec.describe Engine do
  subject(:engine) { described_class.new }

  describe '#start' do
    it 'turns on' do
      expect(engine.start).to eq true
    end
  end

  describe '#stop' do
    it 'turns off' do
      expect(engine.stop).to eq false
    end
  end

  describe '#on?' do
    it 'when off returns false' do
      expect(engine).not_to be_on
    end

    it 'when on returns true' do
      engine.start

      expect(engine).to be_on
    end
  end
end
