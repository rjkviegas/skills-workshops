require "exercise_4"

describe "#count_of_each_value_in_hash" do
  let(:favourite_music) {
    {
      mary: "Sunset Rubdown",
      isla: "Frozen Soundtrack",
      lauren: "Animal Collective",
      matt: "Frozen Soundtrack",
      jess: "Bruce Springsteen"
    }
  }

  let(:counts) {
    {
      "Sunset Rubdown" => 1,
      "Frozen Soundtrack" => 2,
      "Animal Collective" => 1,
      "Bruce Springsteen" => 1
    }
  }

  it "takes a hash and returns a hash of counts of each value" do
    expect(count_of_each_value_in_hash(favourite_music)).to eq(counts)
  end
end
