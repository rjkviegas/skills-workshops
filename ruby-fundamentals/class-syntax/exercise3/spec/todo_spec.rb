require 'todo'
require 'todo_list'

describe Todo do
  it "is an instance of the Todo class" do
    todo = Todo.new("get milk")

    expect(todo).to be_a(Todo)
  end

  it "has a description" do
    todo = Todo.new("get milk")

    expect(todo.description).to eq("get milk")
  end
end
