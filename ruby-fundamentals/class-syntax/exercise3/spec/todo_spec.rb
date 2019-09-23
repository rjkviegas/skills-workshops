require 'todo'
require 'todo_list'

describe Todo do
  it "is an instance of the Todo class" do
    todo = Todo.new("get milk")

    expect(todo).to be_a(TodoList)
  end

  it "has text" do
    expect(Todo.new("get milk").text).to eq("get milk")
  end
end
