require "todo"

describe Todo do
  describe "creation" do
    subject { described_class.new("say hi") }

    it "creates a todo" do
      expect(subject).to be_instance_of described_class
    end
  end
end
