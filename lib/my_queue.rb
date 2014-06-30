class MyQueue
  def initialize
    @the_queue = []
  end

  def empty?
    size == 0 ? true : false
  end

  def size
    @the_queue.count
  end

  def enqueue(item)
    @the_queue << item
  end

  def dequeue
    @the_queue.shift
  end
end