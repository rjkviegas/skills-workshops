class Score
  attr_reader :current_score

  def initialize(initial_score = 0)
    @current_score = initial_score
  end

  def increment
    @current_score += 1
  end
end
