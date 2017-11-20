def sort_asc(array)
  0..array.length.times do |i|
    item = array[i]
    while item < array[i - 1] && i > 0
      swap(array, item, i)
      i -= 1
    end
  end
  array
end

def sort_desc(array)
  0..array.length.times do |i|
    item = array[i]
    while item > array[i - 1] && i > 0
      swap(array, item, i)
      i -= 1
    end
  end
  array
end

def swap(array, item, i)
  array[i] = array[i - 1]
  array[i - 1] = item
end
