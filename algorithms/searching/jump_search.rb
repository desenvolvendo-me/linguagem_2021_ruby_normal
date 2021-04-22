class AlgorithmsSearching

  def jump_search(array, x)
    length = array.length
    step = Math.sqrt(length)

    prev = 0

    while array[[step, length].min] < x
      prev = step
      step += Math.sqrt(length)
      return -1 if prev >= length
    end

    while array[prev] < x
      prev += 1
      return -1 if prev == [step, length].min
    end

    return prev.to_i if array[prev].eql? x

    -1
  end

end

array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 50

result = AlgorithmsSearching.new.jump_search(array, x)

puts result.negative? ? "Number '#{x}' is not present in array" : "Number '#{x}' is at index #{result}"
