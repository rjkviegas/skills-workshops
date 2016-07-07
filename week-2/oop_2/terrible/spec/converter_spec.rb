require 'converter'

describe Converter do
  subject(:converter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '.convert' do
    it 'converts a string given a type' do
      expect(converter.convert(:text)).to eq "Example string"
      expect(converter.convert(:html)).to eq "<html><head></head><body>Example string</body></html>"
      expect(converter.convert(:json)).to eq "{\"response\":\"Example string\"}" 
      expect(converter.convert(:xml)).to eq "<response>Example string</response>"
    end

    it 'raises an error given an unrecognised type' do
      expect { converter.convert(:garbage) }.to raise_error "Unrecognised type"
    end
  end
end