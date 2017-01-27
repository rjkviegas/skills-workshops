require "todo_list"

describe "TodoList features" do
  it "can create a todo" do
    list = TodoList.new
    list.add("say hi")
    expect(list.to_string).to eq("1. say hi not complete")
  end

  it "can complete a todo" do
    list = TodoList.new
    list.add("say hi")
    list.set_complete(0)
    expect(list.to_string).to eq("1. say hi complete")
  end

  it "can print some todos" do
    list = TodoList.new
    list.add("say hi")
    list.add("say howdy")
    expect(list.to_string)
      .to eq("1. say hi not complete\n2. say howdy not complete")
  end
end
