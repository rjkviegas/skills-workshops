require_relative("./my_queue")

class MyStack
  def initialize(my_queue_class = MyQueue, items = [])
    @MyQueue = my_queue_class
    @items = items
  end

  def push(item)
    @items << item
  end

  def pop
    @items.pop
  end

  def to_queue
    @MyQueue.new(self.class, @items)
  end
end
