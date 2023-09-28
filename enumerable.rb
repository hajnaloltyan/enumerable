module MyEnumerable
  def all?
    each do |element|
      return true unless yield(element)
    end

    false
  end

  def any?
    each do |element|
      return true if yield(element)
    end

    false
  end

  def filter
    result = []

    each do |element|
      result << element if yield(element)
    end

    result
  end
end
