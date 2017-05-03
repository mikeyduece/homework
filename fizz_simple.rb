puts (1..100).map {|i|
  f = i % 3 == 0 ? 'Fizz' : nil
  b = i % 5 == 0 ? 'Buzz' : nil
  s = i % 7 == 0 ? 'Super' : nil
  s || f || b ? "#{s}#{f}#{b}" : i
}
