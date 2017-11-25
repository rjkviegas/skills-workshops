require 'receipt'

describe Receipt do
  it "prints a receipt" do
    receipt = Receipt.new
    amount = 10

    expect { receipt.print(amount) }.to output("You paid #{amount}. THANKS SO MUCH!\n").to_stdout
  end
end
