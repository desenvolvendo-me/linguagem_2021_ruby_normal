class AlgorithmsSorting

  def merge_sort(array)
    return array if array.length.eql? 1

    middle = array.length / 2

    left = array[0...middle]
    right = array[middle..-1]

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)

    result = []

    until sorted_left.length.zero? || sorted_right.length.zero? do
      result << (sorted_left.first <= sorted_right.first ? sorted_left.shift : sorted_right.shift)
    end

    result + sorted_left + sorted_right
  end
end

array = [12, 11, 13, 5, 6, 7]

p AlgorithmsSorting.new.merge_sort(array)