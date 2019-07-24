require 'todo'
require 'todolist'

describe TodoList do
  describe "creating a TodoList" do
    it "creates a new todo list object" do
      expect(TodoList.new).to be_instance_of TodoList
    end
  end

  describe "adding todos" do
    let(:todo) { Todo.new("get milk") }
    let(:todo_list) { TodoList.new }

    it "adds a todo without raising an error" do
      expect { todo_list.add(todo) }.to_not raise_error
    end
  end

  describe "printing todos" do
    let(:todo) { Todo.new("get milk") }
    let(:todo_list) { TodoList.new }

    context "one todo" do
      it "prints a single todo with a bullet point" do
        todo_list.add(todo)

        expect { todo_list.print }.to output("* get milk\n").to_stdout
      end
    end

    context "many todos" do
      let(:todo_1) { Todo.new("get milk") }
      let(:todo_2) { Todo.new("get the paper") }
      let(:todo_3) { Todo.new("get orange juice") }
      let(:todo_list) { TodoList.new }

      let(:expected_output) { ["* get milk",
                              "* get the paper",
                              "* get orange juice"].join("\n") +
                             "\n" }

      it "prints the todos, separated by newlines" do
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)

        expect { todo_list.print }.to output(expected_output).to_stdout
      end
    end
  end
end
