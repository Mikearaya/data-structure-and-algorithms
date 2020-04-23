array = [9, 8, 7, 6, 5, 4, 3, 2, 1]

i = 0
length = array.length - 1

loop do
  j = 0

  break if i == length

  loop do
    if array[j] > array[j + 1]
      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
    end
    break if j == length - 1

    j += 1
  end

  i += 1
end

puts array
