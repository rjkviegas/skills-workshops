class Van
  attr_accessor :engine

  def initialize(engine)
    @engine = engine
  end

  def self.hire
    engine = Engine.new
    new(engine)
  end
end
