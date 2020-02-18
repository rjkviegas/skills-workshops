describe 'BankAccount' do
  it 'can create a bank account' do
    bank_account = BankAccount.new
    expect(bank_account).to be_instance_of(BankAccount)
  end

  it 'can respond to deposit with 1 arg' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:deposit).with(1).argument
  end
end
