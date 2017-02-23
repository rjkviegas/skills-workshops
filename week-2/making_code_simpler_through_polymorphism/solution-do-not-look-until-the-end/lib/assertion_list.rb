require_relative "./truthy_assertion"
require_relative "./equal_assertion"

class AssertionList
  def initialize
    @assertions = []
  end

  def add(assertion)
    @assertions << assertion
  end

  def check
    @assertions.each(&:check)
  end
end
