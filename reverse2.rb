word = gets.chomp

def reverse_string(word)
  split_string = word.split("")
  reversed = []
  string.size.times { reversed << split_string.pop}
  reversed.join
end

puts reverse_string(word)
