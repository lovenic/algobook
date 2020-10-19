def b_search(arr, elem)
  min = 0
  max = arr.length - 1

  while min <= max do
    current = (max + min) / 2

    return current if arr[current] == elem

    if elem < arr[current]
      max = current - 1
    else
      min = current + 1
    end
  end

  puts "not found"
end

puts b_search([1,2,3,4,5,6], 10)
puts b_search([1,2,3,4,5,6], 0)
puts b_search([1,2,3,4,5,6], 6)
puts b_search([1,2,3,4,5,6], 3)
