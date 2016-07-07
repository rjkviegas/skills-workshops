require 'html_parser'

describe HtmlParser do
  subject(:parser) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to HTML' do
      expect(parser.convert).to eq "<html><head></head><body>Example string</body></html>"
    end
  end
end