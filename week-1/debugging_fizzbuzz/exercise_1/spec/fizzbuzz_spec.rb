require 'fizzbuzz'

describe FizzBuzz do
  describe "#play" do
    it "returns 1 when 1 is given" do
      expect(subject.play(1)).to eq 1
    end

    it "returns the number when not divisible by 3 or 5" do
      expect(subject.play(8)).to eq 8
    end

    it "returns Fizz when a number is divisible by 3" do
      expect(subject.play(3)).to eq "Fizz"
    end

    it "returns Buzz when a number is divisible by 5" do
      expect(subject.play(5)).to eq "Buzz"
    end

    it "returns FizzBuzz when a number is divisible by 3 and 5" do
      expect(subject.play(15)).to eq "FizzBuzz"
    end
  end
end
