require 'diary'

describe Diary do
  subject(:diary) { described_class.new }
  let(:appointment) { appointment = double(:appointment, time: Time.now, title: "Test appointment") }

  describe '#make_appointment' do
    before do
      diary.add_appointment(appointment)
    end

    it 'makes an appointment' do
      expect(diary.appointments.last.title).to eq "Test appointment"
    end

    it 'raises an error if appointment times conflict' do
      expect { diary.add_appointment(appointment) }.to raise_error "You're not free at that time"
    end
  end
end