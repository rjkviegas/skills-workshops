require_relative "./todo_printer"

module TodoListPrinter
  def self.to_string(todos, todo_printer = TodoPrinter)
    todos.each_with_index.map { |todo, index|
      todo_printer.to_string(todo, index + 1)
    }.join("\n")
  end
end
