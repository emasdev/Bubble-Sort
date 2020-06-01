def bubble_sort(arr)
  limit = arr.length
  index = 0
  puts limit
  puts index

  while index <= limit do
    number = arr[index]
    nextNumber = arr[index + 1]
    if nextNumber && number
      if number > nextNumber
        arr[index] = nextNumber
        arr[index + 1] = number
        index = 0
        print arr
      end
    end
    index = index + 1
  end
  puts "result"
  print arr
end

array = [4,3,78,2,0,2]
bubble_sort(array)