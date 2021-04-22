class AlgorithmsSearching

  def binary_search(array, left, right, x)
    if right >= left
      mid = left + (right - left) / 2
      mid = mid.floor

      if array[mid] == x
        mid
      elsif array[mid] > x
        right = mid - 1
        binary_search(array, left, right, x)
      else
        left = mid + 1
        binary_search(array, left, right, x)
      end

    else
      -1
    end
  end

end

array = [1, 3, 4, 10, 40, 55, 90]
x = 90
n = array.length - 1

result = AlgorithmsSearching.new.binary_search(array, 0, n, x)
p result.negative? ? 'Element is not present in array' : "Element is present at index #{result}"
