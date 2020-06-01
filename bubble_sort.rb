def bubble_sort(arr)
  limit = arr.length
  index = 0
  puts limit
  puts index
  finish_sorting=false  
  need_to_sort=false
  while !finish_sorting do
    number = arr[index]
    nextNumber = arr[index + 1]
    if nextNumber && number
      if number > nextNumber
        arr[index] = nextNumber
        arr[index + 1] = number
        need_to_sort=true    
        print arr
      end
    end

    if index == limit    
          if need_to_sort
            index = 0
            need_to_sort = false
          else
            finish_sorting = true
          end
    else
      index = index + 1
    end
  end
  print arr
  puts " "
end

# array = [4,3,78,2,0,2]
array = [10,9,8,7,6,5,4,3,2,1,1,1,0,0]
bubble_sort(array)