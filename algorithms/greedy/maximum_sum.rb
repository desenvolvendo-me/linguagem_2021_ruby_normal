class AlgorithmsGreedy

  def maximum_sum(array)
    array.each_with_index do |item, index|
      array[index] = item.abs if item.negative?
    end

    sum = 0
    array.each do |item|
      sum += item
    end

    sum
  end

end

array = [-2, 0, 5, -1, 2]

puts AlgorithmsGreedy.new.maximum_sum(array)
