puts "Pick a number between 1 and 1000."
number = gets.chomp.to_i

if number % 7 == 0
  puts "Super"
elsif number % 5 == 0
  puts "Buzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0 && number % 3 == 0
  puts "FizzBuzz"
elsif number % 5 == 0 && number % 7 == 0
  puts "SuperBuzz"
elsif number % 3 == 0 && number % 7 == 0
  puts "SuperFizz"
elsif number % 3 == 0 && number % 5 == 0 && number % 7 == 0
  puts "SuperFizzBuzz"
else
  puts number
end
