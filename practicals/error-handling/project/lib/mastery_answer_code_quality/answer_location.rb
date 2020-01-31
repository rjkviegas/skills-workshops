class AnswerLocation
  SPEC_PATH_PATTERN = /(^\/.+)\/spec\/question_(\d+)_spec.rb$/

  def initialize(spec_path)
    @spec_path_match = SPEC_PATH_PATTERN.match(spec_path)
    assert_valid_spec_path
  end

  def path
    "#{base_path}/questions/question_#{question_number}.rb"
  end

  private

  attr_reader :spec_path_match

  def base_path
    spec_path_match[1]
  end

  def question_number
    spec_path_match[2]
  end

  def assert_valid_spec_path
    raise "Bad spec path" unless spec_path_match
  end
end
