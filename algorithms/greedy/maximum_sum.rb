def maximunSum(arr)
  len = arr.size

  arr.each_with_index do |item, index|
    if item < 0
      arr[index] = item.abs
    end
  end

  sum = 0
  arr.each do |item|
    sum += item
  end

  sum
end

arr = [-2, 0, 5, -1, 2]

puts maximunSum(arr)