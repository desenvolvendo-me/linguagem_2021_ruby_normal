def countingSort(a = 'geeksforgeeks', min = 0, max = 10)
  a = a.split
  if min > max
    return "invalid range"
  end

  n = max - min + 1
  count = Array.new(n, 0)
  len = a.length
  output = Array.new(len)

  for i in 0...len
    count[a[i] - min] += 1
  end

  for i in 1...n
    count[i] += count[i - 1]
  end

  for i in 0...len
    output[count[a[i] - min] - 1] = a[i]
    count[a[i] - min] -= 1
  end

  for i in 0...len
    a[i] = output[i]
  end

  return a

end

puts countingSort()