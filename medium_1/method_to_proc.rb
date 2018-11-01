def capitalize(string)
  string.capitalize
end

capitalize_proc = method(:capitalize).to_proc

arr =["hello", "world"]

arr.map(&capitalize_proc)