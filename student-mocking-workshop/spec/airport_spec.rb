require 'airport'

RSpec.describe Airport do

  describe "when the weather is sunny" do
    it "a plane can land at an airport" do

    end

    it "a second plane can land at the airport" do

    end

    it "plane takes off and is not at airport" do

    end

    it "one plane takes off and one is left in airport" do

    end

    it "confirms the plane is no longer at the airport after takeoff" do

    end

    it "returns true if plane is still at the airport" do
      airport = Airport.new(["plane 1"])

      expect(airport.plane_at_airport?("plane 1")).to eq(true)
    end

    it "returns weather is perfect for perfect weather" do

    end
  end

  describe "when the weather is stormy" do
    it "won't allow takeoff if weather is stormy" do

    end

    it "won't allow landing if weather is stormy" do

    end
  end
end
