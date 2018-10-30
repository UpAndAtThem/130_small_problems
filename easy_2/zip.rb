def zip(arr1, arr2)
  index = 0
  result = []

  loop do
    result << [arr1[index], arr2[index]]
    index += 1
    break if index >= arr1.length
  end

  result
end

zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]