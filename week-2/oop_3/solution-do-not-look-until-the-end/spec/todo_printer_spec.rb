require "todo_printer"

describe TodoPrinter do
  describe "printing a todo" do
    let(:todo) { double(:todo,
                        description: "say hi",
                        complete?: false )}

    it "includes index" do
      expect(described_class.to_string(todo, 0))
        .to match(/^0\./)
    end

    it "includes description" do
      expect(described_class.to_string(todo, 0))
        .to match(/say hi/)
    end

    it "includes completion status" do
      expect(described_class.to_string(todo, 0))
        .to match(/not complete/)
    end
  end
end
