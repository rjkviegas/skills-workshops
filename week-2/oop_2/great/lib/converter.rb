require_relative 'text_formatter'
require_relative 'html_formatter'
require_relative 'json_formatter'
require_relative 'xml_formatter'

# Understands the conversion of strings to abstract types
class Converter
  def initialize(string)
    @string = string
  end

  def convert(type)
    raise "Unrecognised type" unless known_formatter?(type)
    formatter_of_type(type).convert
  end

  private

  attr_reader :string

  FORMATTERS = { text: TextFormatter, html: HtmlFormatter, json: JsonFormatter, xml: XmlFormatter }.freeze

  def known_formatter?(type)
    FORMATTERS.include?(type)
  end

  def formatter_of_type(type)
    FORMATTERS[type].new(string)
  end
end
