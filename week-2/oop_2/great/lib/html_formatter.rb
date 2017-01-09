# Understands the conversion of strings to HTML
class HtmlFormatter
  def initialize(string)
    @string = string
  end

  def convert
    "<html><head></head><body>#{ string }</body></html>"
  end

  private

  attr_reader :string
end