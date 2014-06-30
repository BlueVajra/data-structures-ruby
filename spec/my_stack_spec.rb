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
end