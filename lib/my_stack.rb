class Node
  attr_accessor :name, :next

  def initialize(name, next_node)
    @name = name
    @next = next_node
  end
end

class MyStack
  def initialize
    @size = 0
    @head = nil
  end

  def empty?
    @size == 0 ? true : false
  end

  def size
    @size
  end

  def push(item)
    @size += 1
    if @head == nil
      @head = Node.new(item, nil)
    else
      node = @head
      until node.next == nil
        node = node.next
      end
      node.next = Node.new(item, nil)
    end
  end

  def pop
    if @head != nil
      node = @head
      prev_node = nil
      until node.next == nil
        prev_node = node
        node = node.next
      end
      result = node.name
      if @head.next != nil
        prev_node.next = nil
      else
        @head = nil
      end
      @size -= 1
      result
    else
      nil
    end
  end

  def each
    new_count = @size-1
    while new_count >= 0
      node = @head
      new_count.times do |count|
        node = node.next
      end
      yield node.name
      new_count -= 1
    end
  end
end