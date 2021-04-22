class AlgorithmsSorting

  def counting_sort(a, min, max)
    a = a.split('')
    return 'invalid range' if min > max

    n = max - min + 1
    count = Array.new(n, 0)
    length = a.length
    output = Array.new(length)

    (0...length).each do |i|
      count[a[i] - min] += 1
    end

    (1...n).each do |i|
      count[i] += count[i - 1]
    end

    (0...length).each do |i|
      output[count[a[i] - min] - 1] = a[i]
      count[a[i] - min] -= 1
    end

    (0...length).each do |i|
      a[i] = output[i]
    end

    return a

  end
end

a = 'geeksforgeeks'
min = 0
max = 10

puts AlgorithmsSorting.new.counting_sort(a, min, max)