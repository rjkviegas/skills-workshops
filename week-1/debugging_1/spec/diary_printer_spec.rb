require 'diary_printer'

describe DiaryPrinter do
  subject(:diary_printer) { described_class.new(diary, output) }
  let(:diary) { double(:diary, appointments: [appointment]) }
  let(:appointment) { double(:appointment, time: Time.now, title: "Test appointment") }
  let(:output) { StringIO.new }

  describe '#print_diary' do
    it 'pretty-prints a set of appointments' do
      expected_string = "Test appointment: #{Time.now.strftime("%d/%m/%y at %H:%M")}"
      
      expect(output).to receive(:print).with(expected_string)
      diary_printer.print_diary
    end
  end
end