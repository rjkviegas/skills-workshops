require 'airport'

RSpec.describe Airport do
  let(:sunny) {1}
  let(:stormy) {2}

  describe "when the weather is sunny" do
    let(:weather) { double("weather double", :generate => sunny) }

    it "a plane can land at an airport" do
    # Lines 12 - 13 show an alternative syntax option for the double on line 8 - both syntax options do the same thing!
      #weather = double("weather double")
      #allow(weather).to receive(:generate) { sunny }
      
      airport = Airport.new([], weather)

      expect(airport.land("plane 1")).to eq(["plane 1"])
    end

    it "a second plane can land at the airport" do
      airport = Airport.new([], weather)

      airport.land("plane 1")

      expect(airport.planes).to eq(["plane 1"])
    end

    it "plane takes off and is not at airport" do
      airport = Airport.new([], weather)

      expect(airport.take_off).to eq([])
    end

    it "one plane takes off and one is left in airport" do
      airport = Airport.new(["plane 1", "plane 2"], weather)

      expect(airport.take_off).to eq(["plane 1"])
    end

    it "confirms the plane is no longer at the airport" do
      airport = Airport.new(["plane 1"], weather)

      airport.take_off

      expect(airport.plane_at_airport?("plane 1")).to eq(false)
    end

    it "returns true if plane is still at the airport" do
      airport = Airport.new(["plane 1"])

      expect(airport.plane_at_airport?("plane 1")).to eq(true)
    end

    it "returns weather is perfect for perfect weather" do
      airport = Airport.new([], weather)

      expect(airport.check_weather("land")).to eq("perfect for flying")
    end
  end

  describe "when the weather is stormy" do
    let(:weather) { double("weather double", :generate => stormy) }

    it "won't allow takeoff if weather is stormy" do
      airport = Airport.new(["plane 1"], weather)

      expect { airport.take_off }.to raise_error("cannot take off due to stormy weather")
      expect(airport.planes).to eq(["plane 1"])
    end

    it "won't allow landing if weather is stormy" do
      airport = Airport.new([], weather)

      expect { airport.land("plane 1") }.to raise_error("cannot land due to stormy weather")
      expect(airport.planes).to eq([])
    end
  end
end
