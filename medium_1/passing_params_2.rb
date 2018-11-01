raven, finch, *raptors = %w(raven finch hawk eagle)
p raven # => 'raven'
p finch # => 'finch'
p raptors  # => ['hawk','eagle']
# Based on the examples shown above, write a method that takes an array as an argument. 
# The method should yield the contents of the array to a block, which should assign 
# your block variables in such a way that it ignores the first two elements, 
# and groups all remaining elements as a raptors array.

def birds(arr)
  yield(arr)
end

bird_arr = %w(raven finch hawk eagle)

birds(bird_arr) { |_, _, *raptors| binding.pry}