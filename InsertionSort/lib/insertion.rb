def sort(array, mode)
  if mode == 'asc'
    0..array.length.times do |i|
      item = array[i]
      while item < array[i - 1] && i > 0
        array[i] = array[i - 1]
        array[i - 1] = item
        i -= 1
      end
    end
  elsif mode == 'desc'
    0..array.length.times do |i|
      item = array[i]
      while item > array[i - 1] && i > 0
        array[i] = array[i - 1]
        array[i - 1] = item
        i -= 1
      end
    end
  end
  array
end
