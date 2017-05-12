require 'feedback'
require 'date'

describe Feedback do
  subject(:feedback) { Feedback.new(10, Date.today) }

  describe '#happiness' do
    it 'returns the happiness score' do
      expect(feedback.happiness).to eq 10
    end
  end
end