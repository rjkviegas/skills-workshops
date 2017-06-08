require 'test'
require 'answer'

describe Test do
  let(:answers) do
    [
      Answer.new(5, 5),
      Answer.new(7, 7),
      Answer.new(1, 1)
    ]
  end

  subject(:test) { Test.new(Date.today, answers) }

  describe '#pretty_date_taken' do
    it 'returns the date the test was taken, as a string' do
      expect(test.pretty_date_taken).to eq Date.today.to_s
    end
  end

  describe '#score' do
    it 'returns the number of correct answers' do
      expect(test.score).to eq 3
    end
  end
end
