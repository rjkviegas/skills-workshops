require 'answer'

describe Answer do
  subject(:answer) { Answer.new(5, 5) }

  describe '#correct?' do
    it 'is true if the answer given equals the correct answer' do
      expect(answer.correct?).to be true
    end

    it 'is false otherwise' do
      wrong_answer = Answer.new(5, 3)

      expect(wrong_answer.correct?).to be false
    end
  end
end