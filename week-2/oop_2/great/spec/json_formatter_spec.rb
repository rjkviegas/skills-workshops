require 'json_formatter'

describe JsonFormatter do
  subject(:formatter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to JSON' do
      expect(formatter.convert).to eq "{\"response\":\"Example string\"}"
    end
  end
end
