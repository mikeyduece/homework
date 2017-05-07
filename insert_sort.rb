
def sort(input)
  input.map.with_index {|num, i| (i-1) < i ? input.insert(num) : nil}
end
sorted = ["d", "b", "c", "a"]
puts sorted.sort.inspect
