require 'contact'

describe Contact do
  let(:subject)   { described_class.new('3', 'Test McGee', '1337 Test Avenue', '12345678') }

  it 'stores an id' do
    expect(subject.id).to eq('3')
  end

  it 'stores a name' do
    expect(subject.name).to eq('Test McGee')
  end

  it 'stores an address' do
    expect(subject.address).to eq('1337 Test Avenue')
  end

  it 'stores a telephone number' do
    expect(subject.tel).to eq('12345678')
  end
end
