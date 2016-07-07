require_relative 'text_parser'
require_relative 'html_parser'
require_relative 'json_parser'
require_relative 'xml_parser'

# Understands the conversion of strings to abstract types
class Converter
  def initialize(string)
    @string = string
  end

  def convert(type)
    raise "Unrecognised type" unless known_parser?(type)
    parser_of_type(type).convert  
  end

  private

  attr_reader :string

  PARSERS = { text: TextParser, html: HtmlParser, json: JsonParser, xml: XmlParser }.freeze

  def known_parser?(type)
    PARSERS.include?(type)
  end

  def parser_of_type(type)
    PARSERS[type].new(string)
  end
end