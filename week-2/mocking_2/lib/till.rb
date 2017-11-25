require './lib/receipt'

class Till
  def initialize(receipt_class = Receipt)
    @receipt_class = receipt_class
    @amount = 0
  end

  def take_payment(amount)
    @amount = amount
  end

  def print_receipt
    receipt = @receipt_class.new
    receipt.print(@amount)
  end
end
