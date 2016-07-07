require 'xml_parser'

describe XmlParser do
  subject(:parser) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to XML' do
      expect(parser.convert).to eq "<response>Example string</response>"
    end
  end
end