def bubble_sort_by(array)
  index = 0
  length = array.length - 1
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
  array.to_s
end

puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
