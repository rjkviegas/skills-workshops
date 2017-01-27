require "todo"

describe Todo do
  describe "creation" do
    subject { described_class.new("say hi") }

    it "creates a todo with a description" do
      expect(subject.description).to eq("say hi")
    end
  end

  describe "completing todos" do
    subject { described_class.new("say hi") }

    it "creates todos that are initially incomplete" do
      expect(subject.complete?).to eq(false)
    end

    it "sets a todo to complete" do
      subject.set_complete
      expect(subject).to be_complete
    end
  end
end
