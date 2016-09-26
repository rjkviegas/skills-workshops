require "rectangle"

describe "returning a 20x10 rectangle" do
  it "returns a rectangle of the right size" do
    expect(rectangle).to eq("|------------------|\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|                  |\n" +
                            "|------------------|\n")
  end
end
