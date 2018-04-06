require 'person'

RSpec.describe Person do
  subject(:valid_person) { described_class.new('abc', 'def', described_class::DRIVING_AGE) }
  subject(:underage_person) { described_class.new('ghi', 'jkl', described_class::DRIVING_AGE - 1) }

  describe '#legal_driver?' do
    it 'returns true' do
      expect(valid_person).to be_legal_driver
    end

    it 'returnas false' do
      expect(underage_person).not_to be_legal_driver
    end
  end

  describe '#full_name' do
    it 'returns first and last name' do
      expect(valid_person.full_name).to eq 'abc def'
    end
  end

end
