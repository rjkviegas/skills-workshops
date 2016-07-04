# Understands how diaries should look
class DiaryPrinter
  def initialize(diary, output = STDOUT)
    @diary = diary
    @output = output
  end

  def print_diary
    diary.appointments.each do |appointment|
      pretty_print_appointment(appointment)
    end
  end

  private
  attr_reader :diary, :output

  def pretty_print_appointment(appointment)
    output.print("#{appointment.title}: #{appointment.time.strftime("%d/%m/%y at %H:%M")}")
  end
end