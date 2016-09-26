require "print_rectangle"

describe "printing a 20x10 rectangle" do
  it "prints a rectangle of the right size" do
    expect(print_rectangle).to eq("|------------------|\n" +
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
