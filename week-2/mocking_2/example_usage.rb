# exercise1
bike = Bike.new
docking_station = DockingStation.new([bike])
p "Working bike count: #{docking_station.working_bike_count}"

# exercise2
till = Till.new
till.take_payment(100)
till.print_receipt
