
require 'cipher'

describe Cipher do
  text = "theswiftfoxjumpedoverthelazydog"
  encoded_text = "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

  describe "#encode" do
    it "encodes text with the specified key" do
      expect(subject.encode(text, "secretkey")). to eq encoded_text
    end
  end

  describe "#decode" do
    it "decodes encoded text when given the correct key" do
      expect(subject.decode(encoded_text, "secretkey")).to eq text
    end
  end
end
