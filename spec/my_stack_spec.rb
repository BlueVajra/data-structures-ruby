require "./lib/my_stack"

describe MyStack do
  it "creates and empty stack" do
    stack = MyStack.new
    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end
end