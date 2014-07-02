class Node
  attr_accessor :value, :below

  def initialize(value)
    @value = value
    @below = nil
  end
end

class MyStack
  def initialize
    @size = 0
    @bottom = nil
    @top = nil
  end

  def empty?
    @size == 0 ? true : false
  end

  def size
    @size
  end

  def push(item)
    @size += 1
    node = Node.new(item)
    if @bottom == nil
      @bottom , @top = node, node
    else
      node.below = @top
      @top = node
    end
  end

  def pop
    if size != 0
      @size -= 1
      popped_top = @top.value
      @top = @top.below
      popped_top
    end
  end

  def each(&block)
    current_node = @top
    while !current_node.nil?
      yield current_node.value
      current_node = current_node.below
    end
  end
end