require 'todo'
require 'todolist'

describe Todo do
  describe "creating a new Todo" do
    it "creates a new todo object" do
      expect(Todo.new("get milk")).to be_instance_of Todo
    end
  end

  describe "getting text on todo" do
    it "returns text stored on todo" do
      expect(Todo.new("get milk").text).to eq("get milk")
    end
  end
end
