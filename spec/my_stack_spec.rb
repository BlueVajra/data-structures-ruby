require "./lib/my_stack"

describe MyStack do
  it "creates an empty stack" do
    stack = MyStack.new
    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end
  it "allows user to add item to the stack" do
    stack = MyStack.new
    stack.push("one")
    expect(stack.size).to eq 1
    expect(stack.empty?).to eq false
  end
  it "allows user to pop item off the end of the stack" do
    stack = MyStack.new
    stack.push("one")
    stack.push("two")
    expect(stack.size).to eq 2
    expect(stack.pop).to eq "two"
    expect(stack.size).to eq 1
    expect(stack.pop).to eq "one"
    expect(stack.size).to eq 0
  end

  it "iterates through the stack with each" do
    stack = MyStack.new
    stack.push("one")
    stack.push("two")
    stack.push("three")
    expected = ["three", "two", "one"]
    actual = []
    stack.each do |item|
      actual << item
    end
    expect(actual).to eq expected
  end
end