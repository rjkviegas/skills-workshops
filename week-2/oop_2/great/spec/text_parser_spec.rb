require 'text_parser'

describe TextParser do
  subject(:parser) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to text' do
      expect(parser.convert).to eq "Example string"
    end
  end
end