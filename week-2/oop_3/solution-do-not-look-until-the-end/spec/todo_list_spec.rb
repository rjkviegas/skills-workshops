require "todo_list"

describe TodoList do
  let(:todo) { double(:todo) }
  let(:todo_class) { double(:todo_class, new: todo) }

  describe "creation" do
    it "creates a list with no todos" do
      expect(subject.get(0)).to be_nil
    end
  end

  describe "adding a todo" do
    it "stores a todo with a description" do
      expect(todo_class).to receive(:new)
      subject.add("say hi", todo_class)
      expect(subject.get(0)).to eq(todo)
    end
  end

  describe "setting a todo to be complete" do
    it "sets a todo to be complete", focus: true do
      subject.add("say hi", todo_class)
      expect(todo).to receive(:set_complete)
      subject.set_complete(0)
    end
  end

  describe "showing todos as a string" do
    let(:todo_list_printer_module) { double(:todo_list_printer_module) }

    it "passes all todos as printer and returns result" do
      subject.add("say hi", todo_class)
      subject.add("say howdy", todo_class)
      subject.add("say yo", todo_class)
      todos = [todo, todo, todo]

      expect(todo_list_printer_module)
        .to receive(:to_string).with(todos)

      subject.to_string(todo_list_printer_module)
    end
  end

  describe "getting a todo" do
    it "gets a todo at an index" do
      subject.add("say hi", todo_class)
      expect(subject.get(0)).to_not be_nil
    end
  end
end
