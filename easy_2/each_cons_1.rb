def each_cons(arr)
  index = 0

  loop do
    break unless arr[index + 1]

    yield arr[index, 2]
    index += 1
  end

  nil
end