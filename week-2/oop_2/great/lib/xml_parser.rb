# Understands the conversion of strings to XML
class XmlParser
  def initialize(string)
    @string = string
  end

  def convert
    "<response>#{ string }</response>" 
  end

  private

  attr_reader :string
end