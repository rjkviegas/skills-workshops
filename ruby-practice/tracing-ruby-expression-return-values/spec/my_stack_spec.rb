require "./lib/my_stack"

describe MyStack do
  subject { described_class.new(my_queue_class) }
  let(:my_queue_class) { double(:my_queue_class, new: my_queue) }
  let(:my_queue) { double(:my_queue) }
  let(:item1) { double(:item1) }
  let(:item2) { double(:item2) }

  describe "::new" do
    it "creates a new stack with a stack class" do
      expect(described_class.new(my_queue_class))
        .to be_instance_of(described_class)
    end

    it "creates a new stack with the passed items" do
      stack = described_class.new(my_queue_class, [item1, item2])
      expect(stack.pop).to eq(item2)
      expect(stack.pop).to eq(item1)
    end
  end

  describe "#push" do
    it "stores two items" do
      subject.push(item1)
      subject.push(item2)
      expect(subject.pop).to_not be_nil
      expect(subject.pop).to_not be_nil
    end
  end

  describe "#pop" do
    it "pops the last item pushed that is still on the stack" do
      subject.push(item1)
      subject.push(item2)
      expect(subject.pop).to eq(item2)
    end

    it "pops nil if the stack is empty" do
      expect(subject.pop).to eq(nil)
    end
  end

  describe "#to_queue" do
    it "should send Queue.new" do
      expect(my_queue_class)
        .to receive(:new).with(described_class, [])
      expect(subject.to_queue).to eq(my_queue)
    end
  end
end
