module TodoPrinter
  def self.to_string(todo, index)
    description = todo.description
    complete = todo_completion_to_s(todo)
    "#{index}. #{description} #{complete}"
  end

  private

  def self.todo_completion_to_s(todo)
    todo.complete? ? "complete" : "not complete"
  end
end
