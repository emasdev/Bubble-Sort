def bubble_sort(arr)
  limit = arr.length
  index = 0
  finish_sorting = false
  need_to_sort = false
  until finish_sorting
    number = arr[index]
    nextNumber = arr[index + 1]
    if nextNumber && number
      if number > nextNumber
        arr[index] = nextNumber
        arr[index + 1] = number
        need_to_sort = true
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
      index += 1
    end
  end
  print arr
end

def bubble_sort_by(arr)
  limit = arr.length
  index = 0
  finish_sorting = false
  need_to_sort = false
  until finish_sorting
    number = arr[index]
    nextNumber = arr[index + 1]
    if nextNumber && number
      if (yield number, nextNumber).to_i >= 0
        arr[index] = nextNumber
        arr[index + 1] = number
        need_to_sort = true
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
      index += 1
    end
  end
  print arr
end

# array = [4,3,78,2,0,2]
puts 'Result 1:'
array = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1, 0, 0]
bubble_sort(array)
puts ' '
puts 'result 2:'
bubble_sort_by(%w[worldwide hi hello hey i]) do |left, right|
  left.length - right.length
end
