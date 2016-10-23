# coding: utf-8

# Understands how to flip the table on a struggle
class StruggleTableFlipper
  def initialize(struggle)
    @struggle = struggle
  end

  def flipped_struggle
    "(#{ struggle }!!!)> (╯°□°）╯︵ ┻━┻"
  end

  private

  attr_reader :struggle
end
