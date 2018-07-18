describe Till do
  describe '#print_receipt' do
    let(:receipt)       { double('receipt', print: message) }
    let(:receipt_class) { double('receipt class', new: receipt) }
    let(:message)       { "You paid 0. THANKS SO MUCH!\n" }

    subject(:till)      { described_class.new(receipt_class) }

    it 'returns expected value' do
      expect(till.print_receipt).to eq message
    end
  end
end
