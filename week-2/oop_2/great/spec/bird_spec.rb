require 'bird'

describe Bird do
  subject(:animal) { described_class.new }

  describe '#sound' do
    it 'returns the sound' do
      expect(animal.sound).to eq "chirp"
    end
  end

  describe '#number_of_legs' do
    it 'returns the number of legs' do
      expect(animal.number_of_legs).to eq 2
    end
  end

  describe '#number_of_wings' do
    it 'returns the number of wings' do
      expect(animal.number_of_wings).to eq 2
    end
  end
end
