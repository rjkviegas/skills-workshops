class Engine
  def initialize
    @on = false
  end

  def start
    @on = true
  end

  def stop
    @off = false
  end

  def on?
    @on
  end
end
