require "assertion_list"
require "truthy_assertion"
require "equal_assertion"

describe AssertionList do
  it "doesn't raise an error if all the assertions pass" do
    subject.add(TruthyAssertion.new(""))
    subject.add(EqualAssertion.new(1, 1))

    expect { subject.check }
      .not_to raise_error
  end

  it "raises an error if one of the assertions doesn't pass" do
    subject.add(TruthyAssertion.new(false))

    expect { subject.check }
      .to raise_error "false is not truthy"
  end
end
