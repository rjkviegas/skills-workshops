require 'text_formatter'

describe TextFormatter do
  subject(:formatter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to text' do
      expect(formatter.convert).to eq "Example string"
    end
  end
end
