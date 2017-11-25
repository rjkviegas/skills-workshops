describe Till do
  describe '#print_receipt' do
    it 'returns expected value' do
      receipt = double('receipt', print: "You paid #{amount}. THANKS SO MUCH!")
      receipt_class = double('receipt class', new: receipt)
      amount = 10

      till = Till.new(receipt_class)

      expect(till.print_receipt).to eq "You paid #{amount}. THANKS SO MUCH!"
    end
  end
end
