require 'mastery_answer_code_quality'
describe "question_3" do
  it "prints your location and age bracket" do
  expect { load "questions/question_3.rb" }
    .to output("You live in London\nYou are younger than 35\n").to_stdout
  end
  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end
