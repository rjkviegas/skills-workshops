require "todo_list_printer"

describe TodoListPrinter do
  describe "printing a list of todos" do
    let(:todo_printer_module) { double(:todo_printer_module) }
    let(:todos) { [double(:todo1), double(:todo2)] }

    it "sends each todo to the todo_printer" do
      expect(todo_printer_module)
        .to receive(:to_string).with(todos[0], 1)
      expect(todo_printer_module)
        .to receive(:to_string).with(todos[1], 2)

      described_class.to_string(todos, todo_printer_module)
    end

    it "separates todo_printer output onto separate lines" do
      allow(todo_printer_module)
        .to receive(:to_string).and_return("a todo")

      expect(described_class.to_string(todos, todo_printer_module))
        .to eq("a todo\na todo")
    end
  end
end
