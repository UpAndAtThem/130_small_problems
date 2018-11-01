 items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do |*produce, wheat|
#   puts produce.join", "
#   puts wheat
# end

# puts "\n\n"

# gather(items) do |apples, *vegtables, wheat|
#   puts apples
#   puts vegtables.join", "
#   puts wheat
# end

# puts "\n\n"

# gather(items) do |apples, *produce|
#   puts apples
#   puts produce.join", "
# end

# puts "\n\n"

# gather(items) do |groceries|
#   puts groceries.join", "
# end







# def gather(*produce, wheat)
#   puts "Let's start gathering food."
#   p produce
#   puts wheat
#   puts "We've finished gathering!"
# end

# 2
def gather(apples, *vegetables, corn)
  puts "Let's start gathering food."
  puts apples
  #p vegetables
  puts corn
  puts "We've finished gathering!"
end

# # 3
# def gather(apples, *assorted)
#   puts "Let's start gathering food."
#   puts apples
#   p assorted
#   puts "We've finished gathering!"
# end

# # 4
# def gather(apples, corn, cabbage, wheat)
#   puts "Let's start gathering food."
#   puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
#   puts "We've finished gathering!"
# end

# # method call

gather(items[0], items[1])