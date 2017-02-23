class AssertionList
  def initialize
    @assertions = []
  end

  def add(assertion)
    @assertions << assertion
  end

  def run_all_assertions
    @assertions.each do |assertion|
      if assertion.is_a?(TruthyAssertion)
        assertion.truthy
      elsif assertion.is_a?(EqualAssertion)
        assertion.equal
      end
    end
  end
end
