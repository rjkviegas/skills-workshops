# Understands the conversion of strings to text
class TextParser
  def initialize(string)
    @string = string
  end

  def convert
    string
  end

  private

  attr_reader :string
end