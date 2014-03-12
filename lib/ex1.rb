class Array

  def my_map
    result = []
    self.each do |element|
      result << yield(element)
    end
    result
  end

  def my_select(&block)
    result = []
    self.each do |element|
      result << element if yield(element) == true
    end
    result
  end

  def my_each(&block)
    for element in self
      yield(element)
    end
  end

end