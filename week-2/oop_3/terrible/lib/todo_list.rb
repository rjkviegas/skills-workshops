class TodoList
  def initialize
    @todos = []
  end

  def add(description)
    @todos << { description: description, complete: false }
  end

  def set_complete(index)
    get(index)[:complete] = true
  end

  def to_string
    all.each_with_index.map { |todo, index|
      todo_to_string(todo, index + 1)
    }.join("\n")
  end

  def get(index)
    all[index]
  end

  private

  def all
    @todos
  end

  def todo_to_string(todo, index)
    description = todo[:description]
    complete = todo_completion_to_string(todo)
    "#{index}. #{description} #{complete}"
  end

  def todo_completion_to_string(todo)
    todo[:complete] ? "complete" : "not complete"
  end
end
