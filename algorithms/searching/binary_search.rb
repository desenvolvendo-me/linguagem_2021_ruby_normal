def binarySearch(arr, left, right, x)
  if right >= left
    mid = left + (right - left) / 2
    mid = mid.floor

    if arr[mid] == x
      return mid

    elsif arr[mid] > x
      right = mid - 1
      return binarySearch(arr, left, right, x)

    else
      left = mid + 1
      return binarySearch(arr, left, right, x)
    end

  else
    return -1
  end
end

arr = [1, 3, 4, 10, 40, 55, 90]
x = 90
n = arr.length - 1

result = binarySearch(arr, 0, n, x)
puts result < 0 ?
       "Element is not present in array" :
       "Element is present at index #{result}"