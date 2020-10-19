def find_min(arr)
  min_index = 0
  min_elem = arr[0]
  arr.each_with_index do |elem, index|
    if elem < min_elem
      min_index = index
    end
  end
  min_index
end

def sel_sort(arr)
  new_arr = []
  arr.length.times do
    elem = arr[find_min(arr)]
    new_arr << arr.delete(elem)
  end
  new_arr
end

puts sel_sort([2,3,1, 4,6,0,-1, 0, 7,5])
