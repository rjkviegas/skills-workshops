# Understands the conversion of strings to XML
class XmlFormatter
  def initialize(string)
    @string = string
  end

  def convert
    "<response>#{ string }</response>" 
  end

  private

  attr_reader :string
end