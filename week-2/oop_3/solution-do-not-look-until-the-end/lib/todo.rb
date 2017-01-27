class Todo
  attr_reader :description

  def initialize(description)
    @description = description
    @complete = false
  end

  def set_complete
    @complete = true
  end

  def complete?
    complete == true
  end

  private

  attr_reader :complete
end
