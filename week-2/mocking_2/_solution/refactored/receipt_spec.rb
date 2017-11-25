describe Receipt do
  let(:message)     { "You paid #{amount}. THANKS SO MUCH!\n" }
  let(:amount)      { 10 }

  subject(:receipt) { described_class.new }

  it "prints a receipt" do
    expect { receipt.print(amount) }.to output(message).to_stdout
  end
end
