require 'todo'
require 'todo_list'

describe TodoList do
  it "is an instance of the TodoList class" do
    todo_list = TodoList.new

    expect(todo_list).to be_a(TodoList)
  end

  it "can add a todo to the list" do
    todo_list = TodoList.new
    todo = Todo.new("get milk")

    expect(todo_list).to respond_to(:add).with(1).argument
  end

  describe "printing" do
    context "with one todo" do
      it "prints the todo with a bullet point" do
        todo_list = TodoList.new

        todo_list.add(Todo.new("get milk"))

        expect { todo_list.print }.to output("* get milk\n").to_stdout
      end
    end

    context "with many todos" do
      it "prints the todos separated by newlines" do
        todo_list = TodoList.new

        todo_list.add(Todo.new("get milk"))
        todo_list.add(Todo.new("get the paper"))
        todo_list.add(Todo.new("get orange juice"))

        expected_output = "* get milk\n" +
          "* get the paper\n" +
          "* get orange juice\n"
        expect { todo_list.print }.to output(expected_output).to_stdout
      end
    end
  end
end
