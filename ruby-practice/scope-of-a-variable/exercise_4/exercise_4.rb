class One
  @@two = "two"

  def self.two
    @@two
  end
end

puts One.two
