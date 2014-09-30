require 'my_set'

describe MySet do
  it "creates an empty set" do
    my_set = MySet.new
    expect(my_set.empty?).to eq true
    expect(my_set.size).to eq 0
  end

  it "can have items added to the set" do
    my_set = MySet.new
    my_set.add(1)

    expect(my_set.empty?).to eq false
    expect(my_set.size).to eq 1
  end

  it "can create a set with multiple items at initialize" do
    my_set = MySet.new(1, 2, 3)
    expect(my_set.size).to eq 3
  end

  it "will return whether an item is in the set" do
    my_set = MySet.new(1, 2, 3)
    expect(my_set.include?(1)).to eq true
    expect(my_set.include?(4)).to eq false
  end

  it "will return an array of all items in set" do
    my_set = MySet.new(1, 2, 3)
    expect(my_set.to_array).to eq [1, 2, 3]
  end

  it "will remove an item from the set" do
    my_set = MySet.new(1, 2, 3)
    my_set.remove(2)
    expect(my_set.to_array).to eq [1, 3]

  end

  it "can enumerate over the set returning each value" do
    my_set = MySet.new(1, 2, 3)
    actual = []
    my_set.each do |item|
      actual << item
    end

    expect(actual).to eq [1, 2, 3]
  end

  it "returns a set of the union of two sets" do
    my_set1 = MySet.new(1, 2, 3)
    my_set2 = MySet.new(2, 3, 4, 5)
    my_set3 = MySet.new(1, 2, 3, 4, 5)
    expect(my_set1 + my_set2).to eq my_set3

  end

  it "returns an intersection of the sets" do
    my_set1 = MySet.new(1, 2, 3)
    my_set2 = MySet.new(2, 3, 4, 5)
    my_set3 = MySet.new(2, 3)
    expect(my_set1.intersect(my_set2)).to eq my_set3
  end

  it "returns a difference of the sets" do
    my_set1 = MySet.new(1, 2, 3)
    my_set2 = MySet.new(2, 3, 4, 5)
    my_set3 = MySet.new(1, 4, 5)
    expect(my_set1 - my_set2).to eq my_set3
  end

  it "knows if a set is a subset of another" do
    my_set1 = MySet.new(2, 6)
    my_set2 = MySet.new(2, 3, 4)
    my_set3 = MySet.new(2, 3, 4, 5)
    expect(my_set1<my_set2).to eq false
    expect(my_set2<my_set3).to eq true
  end

end