def step(start_num, end_num, increment)
  current_val = start_num

  loop do
    yield current_val

    current_val += increment
    break if current_val > end_num
  end

  current_val
end

step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10