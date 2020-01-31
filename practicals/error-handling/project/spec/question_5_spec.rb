require 'mastery_answer_code_quality'
describe "question_5" do
  it "prints fizz when number is divisible by 3" do
    allow_any_instance_of(Object)
      .to receive(:gets).and_return("3")

  expect { load "questions/question_5.rb" }
    .to output("Fizz\n").to_stdout
  end
  it "prints buzz when number is divisible by 5" do
    allow_any_instance_of(Object)
      .to receive(:gets).and_return("5")

  expect { load "questions/question_5.rb" }
    .to output("Buzz\n").to_stdout
  end
  it "prints fizzbuzz when number is divisible by 3 and 5" do
    allow_any_instance_of(Object)
      .to receive(:gets).and_return("15")

  expect { load "questions/question_5.rb" }
    .to output("FizzBuzz\n").to_stdout
  end
  it "prints the number otherwise" do
    allow_any_instance_of(Object)
      .to receive(:gets).and_return("2")

  expect { load "questions/question_5.rb" }
    .to output("2\n").to_stdout
  end
  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end
