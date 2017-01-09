require 'xml_formatter'

describe XmlFormatter do
  subject(:formatter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to XML' do
      expect(formatter.convert).to eq "<response>Example string</response>"
    end
  end
end
