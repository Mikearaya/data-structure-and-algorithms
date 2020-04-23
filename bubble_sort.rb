def bubble_sort(array)
  is_sorted = false

  i = 0
  length = array.length - 1

  loop do
    j = 0
    is_sorted = true

    break if i == length

    loop do
      break if j + i == length

      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
        is_sorted = false
      end
      break if j == length - 1

      j += 1
    end
    break if is_sorted

    i += 1
  end
  array
end

unsorted = [22, 7, 17, 3, 50, 41, 32, 21, 11]

puts bubble_sort(unsorted)
