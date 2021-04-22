class AlgorithmsSearching

  def linear(array, x)
    array.each_with_index do |item, index|
      return index if item.eql? x
    end
    -1
  end

end

array = [2, 3, 4, 10, 40]
x = 10

result = AlgorithmsSearching.new.linear(array, x)
puts result.negative? ? 'Element is not present in array' : "Element is present at index #{result}"
