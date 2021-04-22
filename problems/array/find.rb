class ProblemsArray

  def find(array)
    positions = { first: 0, second: 0, third: 0 }

    array.each do |item|
      if item > positions[:first]
        positions[:third] = positions[:second]
        positions[:second] = positions[:first]
        positions[:first] = item

      elsif item < positions[:first] && item > positions[:second]
        positions[:third] = positions[:second]
        positions[:second] = item
      elsif item < positions[:second] && item > positions[:third]
        positions[:third] = item
      end
    end

    positions
  end

end

array = [12, 13, 1, 10, 34, 1]

ProblemsArray.new.find(array).each do |key, value|
  p "#{key}: #{value}"
end