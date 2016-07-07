require 'json'

class Converter
  def initialize(string)
    @string = string
  end

  def convert(type)
    if type == :text
      @string
    elsif type == :html
      "<html><head></head><body>#{ @string }</body></html>"
    elsif type == :json
      { response: @string }.to_json
    elsif type == :xml
      "<response>#{ @string }</response>"  
    else
      raise "Unrecognised type"
    end      
  end
end