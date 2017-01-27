require "exercise_2"

describe "#hash_value_count" do
  let(:favourite_music) {
    {
      mary: "Sunset Rubdown",
      isla: "Frozen Soundtrack",
      lauren: "Animal Collective",
      matt: "Frozen Soundtrack",
      jess: "Bruce Springsteen"
    }
  }

  it "should take a hash and value and return the number of times that value appears in the hash" do
    expect(hash_value_count(favourite_music, "Sun Kil Moon"))
      .to eq(0)
    expect(hash_value_count(favourite_music, "Frozen Soundtrack"))
      .to eq(2)
    expect(hash_value_count(favourite_music, "Sunset Rubdown"))
      .to eq(1)
  end
end
