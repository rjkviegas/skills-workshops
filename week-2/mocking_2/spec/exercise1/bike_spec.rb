require 'bike'

describe Bike do
  it "reports newly created bike is working" do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end
end
