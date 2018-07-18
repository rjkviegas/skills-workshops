require 'till'

class MockReceipt
  def print(amount)
    puts "You paid #{amount}. THANKS SO MUCH!"
  end
end

describe Till do
  describe '#print_receipt' do
    it 'returns expected value' do
      till = Till.new(MockReceipt)

      expect { till.print_receipt }.to output("You paid 0. THANKS SO MUCH!\n").to_stdout
    end
  end
end
