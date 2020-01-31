class AnswerCodeQuality
  def initialize(rubocop_execution)
    @rubocop_execution = rubocop_execution
  end

  def acceptable?
    puts "&&&&&&"
    puts rubocop_execution
    
    rubocop_execution.successful?
  end

  def problems
    puts "*****"
    puts rubocop_execution.problems
    rubocop_execution.problems

  end

  private

  attr_reader :rubocop_execution
end
