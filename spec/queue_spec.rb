require "./lib/my_queue"

describe MyQueue do
  it "initializes an empty queue" do
    queue = MyQueue.new
    expect(queue.empty?).to eq false
    expect(queue.size).to eq 0

  end
end