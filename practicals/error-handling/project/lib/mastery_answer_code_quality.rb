require "mastery_answer_code_quality/version"
require "mastery_answer_code_quality/answer_location"
require "mastery_answer_code_quality/rubocop_execution"
require "mastery_answer_code_quality/answer_code_quality"

module MasteryAnswerCodeQuality
  def self.build(spec_path,
                 answer_location_class=AnswerLocation,
                 rubocop_execution_class=RubocopExecution,
                 answer_code_quality_class=AnswerCodeQuality)
    answer_code_quality_class.new(
      rubocop_execution_class.new(
        mastery_rubocop_config_path,
        answer_location_class.new(spec_path)))
  end

  private_class_method

  def self.mastery_rubocop_config_path
    File.absolute_path(
      File.join(
        File.dirname(__FILE__),
        "..",
        ".rubocop.yml"))
  end
end
