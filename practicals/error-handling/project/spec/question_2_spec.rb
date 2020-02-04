require 'mastery_answer_code_quality'
describe "question_2" do
  it "prints a message when x is divible by 3" do
  expect { load "questions/question_2.rb" }
    .to output("x is divisible by three\n").to_stdout
  end
  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end
