require 'mastery_answer_code_quality'
describe "question_4" do
  it "adds 5 to a number" do
    allow_any_instance_of(Object)
      .to receive(:gets).and_return("1")

  expect { load "questions/question_4.rb" }
    .to output("6\n").to_stdout
  end
  it "has acceptable code quality" do
    code_quality = MasteryAnswerCodeQuality.build(__FILE__)
    expect(code_quality.acceptable?).to(eq(true), code_quality.problems)
  end
end
