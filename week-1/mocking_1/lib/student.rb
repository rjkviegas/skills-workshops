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
    @tests.inject({}) do |date_with_scores, test|
      date_with_scores.merge({"#{ test.pretty_date_taken }": [test.score]}) do |date, existing_scores, new_score|
        existing_scores += new_score
      end
    end
  end

  private

  def average_feedbacks
    @feedbacks.map(&:happiness).reduce(&:+).to_f / @feedbacks.count
  end
end