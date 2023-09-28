module MyEnumerable
  def all?(&block)
    each do |element|
      return true unless yield(element)
    end

    false
  end

  def any?(&block)
    each do |element|
      return true if yield(element)
    end

    false
  end

  def filter(&block)
    result = []

    each do |element|
      result << element if yield(element)
    end

    result
  end
end