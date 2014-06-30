require "./lib/my_queue"

describe MyQueue do
  it "initializes an empty queue" do
    queue = MyQueue.new
    expect(queue.empty?).to eq true
    expect(queue.size).to eq 0
  end

  it "can take an item" do
    queue = MyQueue.new
    queue.enqueue("one")
    expect(queue.empty?).to eq false
    expect(queue.size).to eq 1
  end

  it "can take the first item from the queue" do
    queue = MyQueue.new
    queue.enqueue("one")
    queue.enqueue("two")
    expect(queue.dequeue).to eq "one"
    expect(queue.dequeue).to eq "two"
  end

  it "returns nil if the queue is empty" do
    queue = MyQueue.new
    queue.enqueue("one")
    expect(queue.dequeue).to eq "one"
    expect(queue.dequeue).to eq nil
  end

  it "returns each element in the queue, fifo style" do
    queue = MyQueue.new
    queue.enqueue("one")
    queue.enqueue("two")
    queue.enqueue("three")
    actual = []
    queue.each do |item|
      actual << item
    end
    expected = ["one", "two", "three"]
    expect(actual).to eq expected
  end
end