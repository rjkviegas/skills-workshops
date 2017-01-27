require "todo_list"

describe TodoList do
  describe "creation" do
    it "creates a list with no todos" do
      expect(subject.get(0)).to be_nil
    end
  end

  describe "adding a todo" do
    it "stores a todo with a description" do
      subject.add("say hi")
      expect(subject.get(0)[:description]).to eq("say hi")
    end

    it "stores a todo that is incomplete" do
      subject.add("say hi")
      expect(subject.get(0)[:complete]).to eq(false)
    end
  end

  describe "setting a todo to be complete" do
    it "sets a todo to be complete" do
      subject.add("say hi")
      expect(subject.get(0)[:complete]).to eq(false)
      subject.set_complete(0)

      expect(subject.get(0)[:complete]).to eq(true)
    end
  end

  describe "showing todos as a string" do
    it "shows a list of 3 todos" do
      subject.add("say hi")
      subject.add("say howdy")
      subject.add("say yo")

      expect(subject.to_string)
        .to eq("1. say hi not complete\n2. say howdy not complete\n3. say yo not complete")
    end
  end

  describe "getting a todo" do
    it "gets a todo at an index" do
      subject.add("say hi")
      expect(subject.get(0)).to_not be_nil
    end
  end
end
