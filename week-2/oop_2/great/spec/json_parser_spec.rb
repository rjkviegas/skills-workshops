require 'json_parser'

describe JsonParser do
  subject(:parser) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to JSON' do
      expect(parser.convert).to eq "{\"response\":\"Example string\"}" 
    end
  end
end