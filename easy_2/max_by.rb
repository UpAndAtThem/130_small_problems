# iterate through collection passing element to block
# 
require 'pry'
def max_by(collection)
  return nil if collection.empty?
  
  max_element = collection[0]
  largest_return_value = yield(max_element).to_i

  collection[1..-1].each_with_index do |elem, index|
    return_value = yield(elem).to_i

    if return_value > largest_return_value
      largest_return_value = return_value
      max_element = elem
    end
  end

  max_element
end

p max_by([1, 5, 3]) { |value| value + 2 } #== 5
p max_by([1, 5, 3]) { |value| 9 - value } #== 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } #== 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } #== [3, 4, 5]
p max_by([-7]) { |value| value * 3 } #== -7
p max_by([]) { |value| value + 5 } #== nil
