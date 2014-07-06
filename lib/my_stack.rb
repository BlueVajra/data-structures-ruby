class StackNode
  attr_accessor :value, :below

  def initialize(value, below = nil)
    @value = value
    @below = below
  end
end

class MyStack
  def initialize
    @size = 0
    @top = nil
  end

  def empty?
    @size == 0
  end

  def size
    @size
  end

  def push(item)
    @size += 1
    @top = StackNode.new(item, @top)
  end

  def pop
    if @top != nil
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