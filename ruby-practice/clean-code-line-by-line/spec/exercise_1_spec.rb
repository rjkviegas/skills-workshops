require "exercise_1"

describe "#hash_value" do
  it "should take a hash and key and return the value at the key" do
    expect(hash_value({}, :name)).to be_nil

    expect(hash_value({ name: "Isla" }, :name)).to eq("Isla")
  end
end
