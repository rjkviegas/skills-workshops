require "exercise_3"

describe Score do
  describe "::new" do
    it "is instantiated with a default score of 0" do
      expect(subject.current_score).to eq(0)
    end

    it "can be instantiated with an initial score" do
      expect(described_class.new(10).current_score).to eq(10)
    end
  end

  describe "#current_score" do
    it "returns the current score" do
      expect(subject.current_score).to eq(0)
    end
  end

  describe "#increment" do
    it "increases the current score by 1" do
      subject.increment
      expect(subject.current_score).to eq(1)
    end
  end
end
