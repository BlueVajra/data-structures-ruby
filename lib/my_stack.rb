class MyStack
  def initialize
    @size = 0
  end
  def empty?
    @size == 0 ? true : false
  end

  def size
    @size
  end

  def push(item)
    @size += 1
  end
end