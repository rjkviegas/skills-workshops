class Test
  def initialize(date_taken, answers)
    @date_taken = date_taken
    @answers    = answers
  end

  def pretty_date_taken
    @date_taken.to_s
  end

  def score
    @answers.count { |answer| answer.correct? }
  end
end
