def bubble_sort(arr)
  limit = arr.length.to_i - 2
  index = 0
  finish_sorting, need_to_sort = false
  until finish_sorting
    if arr[index] > arr[index + 1]
      arr[index], arr[index + 1] = arr[index + 1], arr[index]
      need_to_sort = true
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
  arr
end

def bubble_sort_by(arr)
  limit = arr.length.to_i - 2
  index = 0
  finish_sorting, need_to_sort = false
  until finish_sorting
    if (yield arr[index], arr[index + 1]).to_i.positive?
      arr[index], arr[index + 1] = arr[index + 1], arr[index]
      need_to_sort = true
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
  return arr
end

# array = [4,3,78,2,0,2]
puts 'Result 1:'
array = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1, 0, 0]
print bubble_sort(array)
puts ' '
puts 'result 2:'
print bubble_sort_by(%w[worldwide hi hello hey i]) { |left, right| left.length - right.length }
