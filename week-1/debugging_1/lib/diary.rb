# Understands the storage of appointments
class Diary
  attr_reader :appointments

  def initialize
    @appointments = []
  end

  def add_appointment(appointment)
    raise "You're not free at that time" if not_free?(appointment)
    @appointments.push(appointment)
  end

  private

  def not_free?(appointment)
    appointments.map(&:time).includes? appointment.time
  end
end