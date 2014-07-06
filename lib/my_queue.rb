class Node
  attr_accessor :value, :before

  def initialize(value, before = nil)
    @value = value
    @before = before
  end
end

class MyQueue
  def initialize
    @size = 0
    @head = nil
    @tail = nil
  end

  def empty?
    size == 0 ? true : false
  end

  def size
    @size
  end

  def enqueue(item)
    @size += 1
    new_node = Node.new(item)
    if @size == 1
      @head = new_node
    else
      @tail.before = new_node
    end
    @tail = new_node
  end

  def dequeue
    if @size > 0
      @size -= 1
      first_item = @head
      @head = @head.before
      first_item.value
    end
  end

  def each
    if @head != nil
      item = @head
      until item.before == nil do
        yield item.value
        item = item.before
      end
      yield item.value
    end
  end
end