require 'html_formatter'

describe HtmlFormatter do
  subject(:formatter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '#convert' do
    it 'converts the input to HTML' do
      expect(formatter.convert).to eq "<html><head></head><body>Example string</body></html>"
    end
  end
end
