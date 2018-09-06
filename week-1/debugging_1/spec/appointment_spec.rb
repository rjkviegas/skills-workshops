require 'appointment'

describe Appointment do
  subject(:appointment) { described_class.new(time, "Test appointment", "50 Commercial Street London") }
  let(:time) { Time.now }

  describe '#title' do
    it 'has a title' do
      expect(appointment.title).to eq "Test appointment"
    end
  end

  it { is_expected.to respond_to :time }

  describe '#pretty_location' do
    it 'pretty-prints the location' do
      expect(appointment.pretty_location).to eq "50 Commercial St, London E1 6LT, UK"
    end
  end
end