class ProblemsArray

  def reversal(array, k)
    new_array = []

    new_array << array.pop(k)
    new_array << array

    new_array.flatten!
  end

end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3

p ProblemsArray.new.reversal(array, k)
