class Student
  def initialize(first_name: "Joe", last_name: "Bloggs", feedbacks: [], tests: [])
    @first_name = first_name
    @last_name  = last_name
    @feedbacks  = feedbacks
    @tests      = tests
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def happiness
    return 0 if @feedbacks.empty?
    average_feedbacks
  end

  def test_scores
    @tests
      .group_by(&:pretty_date_taken)
      .map {|date, tests| [date, tests.map(&:score)] }
      .to_h
  end

  private

  def average_feedbacks
    @feedbacks.map(&:happiness).reduce(&:+).to_f / @feedbacks.count
  end
end
