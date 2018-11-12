# coding: utf-8

require 'delegate'

# Understands how to present a random, happy emoji
class RandomHappyEmoji < SimpleDelegator
  HAPPY_EMOJI = [":D"]

  def initialize
    super(HAPPY_EMOJI.sample)
  end
end
