# Understands the laundering of clothes
class DryCleaner
  def initialize(courier_company)
    @courier_company = courier_company
  end

  def pickup_clothes
    courier_company.handle_pickup
  end

  private

  attr_reader :courier_company
end
