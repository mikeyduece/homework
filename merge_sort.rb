
class MergeSort
  def sort(input)
    # seperate array into odd and even array
    input_even = []
    input_odd = []
    input.map.with_index {|num, i| i.even? ? input_even << input[i] : input_odd << input[i]}
    # perform insertion sort on both arrays
    input_even.map.with_index {|num, i| (i-1) < i ? input_even.insert(num) : nil}
    input_odd.map.with_index {|num, i| (i-1) < i ? input_odd.insert(num) : nil}
    # combine both arrays
    sorted = []
    
   

  end
end


sorter = MergeSort.new
#=> #<MergeSort:0x007f81a19e94e8>
p sorter.sort(["d", "b", "a", "c"])
#=> ["a", "b", "c", "d"]
