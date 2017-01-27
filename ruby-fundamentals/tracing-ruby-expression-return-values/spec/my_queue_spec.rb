require "./lib/my_queue"

describe MyQueue do
  subject { described_class.new(my_stack_class) }
  let(:my_stack_class) { double(:my_stack_class, new: my_stack) }
  let(:my_stack) { double(:my_stack) }
  let(:item1) { double(:item1) }
  let(:item2) { double(:item2) }

  describe "::new" do
    it "creates a new queue with a queue class" do
      expect(described_class.new(my_stack_class))
        .to be_instance_of(described_class)
    end

    it "creates a new queue with the passed items" do
      queue = described_class.new(my_stack_class, [item1, item2])
      expect(queue.pop).to eq(item1)
      expect(queue.pop).to eq(item2)
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
    it "pops the first item pushed that is still on the queue" do
      subject.push(item1)
      subject.push(item2)
      expect(subject.pop).to eq(item1)
    end

    it "pops nil if the queue is empty" do
      expect(subject.pop).to eq(nil)
    end
  end

  describe "#to_stack" do
    it "should send Stack.new" do
      expect(my_stack_class)
        .to receive(:new).with(described_class, [])
      expect(subject.to_stack).to eq(my_stack)
    end
  end
end
