def bubble_sort(array)
  is_sorted = false
  i = 0
  length = array.size - 1
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

def bubble_sort_by(array)
  index = 0
  length = array.size - 1
  loop do
    is_sorted = true
    break if index == length - 1

    (0...length - index).each do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
    end
    break if is_sorted

    index += 1
  end
  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2])

puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.size - right.size }
