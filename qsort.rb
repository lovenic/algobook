def qsort(arr)
  return arr if arr.length < 2 

  # choose base
  base = arr[arr.length / 2]

  # divide
  less = arr.select { |el| el < base }
  more = arr.select { |el| el > base }

  # concat with sort
  qsort(less) + [base] + qsort(more)
end

puts qsort([1,2,4,9,3,-6])