def bubbleSort(arr)
  len = arr.length
  return arr if len <= 1

  loop do
    swapped = false

    (len-1).times do |i|
      if arr[i] > arr[i+1]
        exp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = exp

        swapped = true
      end
    end

    break if not swapped
  end

  arr
end

arr = [64, 34, 25, 12, 22, 11, 90]

bubbleSort(arr)

p arr