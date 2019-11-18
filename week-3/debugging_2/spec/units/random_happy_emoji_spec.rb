# coding: utf-8

require 'random_happy_emoji'

describe RandomHappyEmoji do
  describe '::new' do
    it 'returns a :D emoji as a string', focus: true do
      srand(67810)
      expect(RandomHappyEmoji.new.to_s).to eq ":D"
    end

    it 'returns a :) emoji as a string', focus: true do
      srand(67809)
      expect(RandomHappyEmoji.new.to_s).to eq ":)"
    end
  end
end
