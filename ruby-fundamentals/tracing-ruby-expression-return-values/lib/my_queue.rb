require_relative("./my_stack")

class MyQueue
  def initialize(my_stack_class = MyStack, items = [])
    @MyStack = my_stack_class
    @items = items
  end

  def push(item)
    @items << item
  end

  def pop
    @items.shift
  end

  def to_stack
    @MyStack.new(self.class, @items)
  end
end
