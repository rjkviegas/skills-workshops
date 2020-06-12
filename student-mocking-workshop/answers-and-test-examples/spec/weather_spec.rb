require 'weather'

RSpec.describe Weather do

  it "creates rainy weather" do
    weather = Weather.new
    allow(Kernel).to receive(:rand).and_return(0)
    expect(weather.generate).to eq(0)
  end

  it "creates sunny weather" do
    weather = Weather.new
    allow(Kernel).to receive(:rand).and_return(1)
    expect(weather.generate).to eq(1)
  end
  #
  it "creates stormy weather" do
    weather = Weather.new
    allow(Kernel).to receive(:rand).and_return(2)
    expect(weather.generate).to eq(2)
  end

end
