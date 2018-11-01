# iterate over collection with index
#   pass each element to block
#   if the blocks return value is falsey
#     converts the remaining elements (including the current falsey element) to an array and returns

def drop_while(arr)
  arr.each_with_index do |elem, index|
    unless yield(elem)
      return arr[index..-1]
    end
  end

  Array.new
end

drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
drop_while([1, 3, 5, 6]) { |value| true } == []
drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
drop_while([]) { |value| true } == []