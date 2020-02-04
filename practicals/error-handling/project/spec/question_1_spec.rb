require 'mastery_answer_code_quality'

describe "question_1" do
  it "prints out helloworld" do
  expect { load "questions/question_1.rb" }
    .to output("helloworld\n").to_stdout
  end
  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end
