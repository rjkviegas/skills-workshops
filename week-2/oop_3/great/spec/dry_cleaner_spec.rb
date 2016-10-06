require 'dry_cleaner'

describe DryCleaner do
  describe '#pickup_clothes' do
    subject(:dry_cleaner) { described_class.new(courier_company) }
    subject(:courier_company) { double(:courier_company) }

    it 'delegates clothing pickup to the courier company' do
      expect(courier_company).to receive(:handle_pickup)
      dry_cleaner.pickup_clothes
    end
  end
end
