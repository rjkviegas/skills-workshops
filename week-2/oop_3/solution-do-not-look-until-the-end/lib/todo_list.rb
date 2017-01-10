require "todo"
require "todo_list_printer"

class TodoList
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def set_complete(index)
    get(index).set_complete
  end

  def to_string(todo_list_printer = TodoListPrinter)
    todo_list_printer.to_string(all)
  end

  def get(index)
    all[index]
  end

  private

  def all
    @todos
  end
end
