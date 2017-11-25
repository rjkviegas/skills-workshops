describe Bike do
  subject(:bike) { described_class.new }
  
  it "reports newly created bike is working" do
    expect(bike).to be_working
  end
end
