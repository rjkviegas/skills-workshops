class DockingStation
  def initialize(bikes)
    @bikes = bikes
  end

  def working_bike_count
    @bikes.select { |bike| bike.working? }.count
  end

  def random_bike_working?
    @bikes.sample.working?
  end
end
