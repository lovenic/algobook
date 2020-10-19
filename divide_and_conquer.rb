def sum(arr)
  return 0 if arr.length == 0

  return arr.shift + sum(arr)
end

def find_max(arr)
  return arr[0] if arr.length == 1

  if arr.length == 2
    if arr[1] - arr[0] > 0
      return arr[1]
    else
      return arr[0] 
    end
  end

  elem = arr.shift
  max = find_max(arr)
  if elem - max > 0
    return elem
  else
    return max
  end
end

puts find_max([1,3,7, 8, 5, -2, 9, 6])