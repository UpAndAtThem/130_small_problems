# Write a method that takes a sorted array of integers as an argument, 
# and returns an array that includes all of the missing integers (in order) 
# between the first and last elements of the argument.

# create range by taking first and last elem of arr
# iterate over range
# push number onto return_arr unless number is present in sorted_arr

def missing(sorted_arr)
  number_range = (sorted_arr[0]..sorted_arr[-1])
  result_arr = []

  sorted_arr.each_cons(2) do |first, second|
    result_arr += ((first + 1)..(second - 1)).to_a
  end

  result_arr
end

# missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# missing([1, 2, 3, 4]) == []
# missing([1, 5]) == [2, 3, 4]
# missing([6]) == []