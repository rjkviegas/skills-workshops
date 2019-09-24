require 'todo'
require 'todo_list'

describe Todo do
  it "is an instance of the Todo class" do
    todo = Todo.new("get milk")

    expect(todo).to be_instance_of(TodoList)
  end

  it "has a description" do
    expect(Todo.new("get milk").description).to eq("get milk")
  end
end
