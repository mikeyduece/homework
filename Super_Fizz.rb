(1..1000).each do |number|
  super_duper = number % 7 == 0
  buzz = number % 5 == 0
  fizz = number % 3 == 0
  if super_duper
    puts "Super"
  elsif buzz
    puts "Buzz"
  elsif fizz
    puts "Fizz"
  elsif buzz && fizz
    puts "FizzBuzz"
  elsif super_duper && buzz
    puts "SuperBuzz"
  elsif super_duper && fizz
    puts "SuperFizz"
  elsif super_duper && buzz && fizz
    puts "SuperFizzBuzz"
  else
    puts number
  end
end
