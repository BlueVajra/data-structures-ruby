class MySet

  def initialize(*items)
    @this_set = {}
    items.each do |item|
      @this_set[item] = true
    end
  end

  def empty?
    size == 0 ? true : false
  end

  def size
    @this_set.length
  end

  def add(item)
    @this_set[item] = true
  end

  def include?(item)
    @this_set.include?(item)
  end

  def to_array
    @this_set.map { |key, value| key }
  end

  def remove(item)
    @this_set.delete(item)
  end

  def + (set)
    new_set = self
    set.each do |item|
      new_set.add(item)
    end
    new_set
  end

  def - (set)
    new_set = MySet.new
    self.each do |item|
      new_set.add(item) if !set.include?(item)
    end
    set.each do |item|
      new_set.add(item) if !self.include?(item)
    end
    new_set
  end

  def < (set)
    self.each do |item|
      if !set.include?(item)
        return false
      end
    end
    true
  end

  def intersect(set)
    new_set = MySet.new
    self.each do |item|
      new_set.add(item) if set.include?(item)
    end
    new_set
  end

  def each
    @this_set.each_key do |key|
      yield key
    end
  end

  def == (set)
    self.to_array.eql?(set.to_array)
  end

end