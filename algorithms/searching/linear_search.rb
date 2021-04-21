# question: https://www.geeksforgeeks.org/linear-search/

def search(arr, x)
  arr.each_with_index do |item, index|
    return index if item == x
  end
  -1
end

arr = [2, 3, 4, 10, 40]
x = 10
# x = 30

result = search(arr, x)
puts result < 0 ?
       "Element is not present in array" :
       "Element is present at index #{result}"