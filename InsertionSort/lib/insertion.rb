def sort(array)
n = array.length - 1
  n.times do
    time_to_do_things.times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      array
    end
  end
end
