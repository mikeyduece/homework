ready_to_quit= false
puts "HELLO THIS IS A GROCERY STORE!"

input = gets.chomp
until ready_to_quit 
  if input.empty?
    puts "HELLO?!"
    input = gets.chomp
  elsif input == input.upcase && input != "GOODBYE!"
    puts "NO THIS IS NOT A PET STORE!"
    input = gets.chomp
  elsif input == input.downcase
    puts "I AM HAVING A HARD TIME HEARING YOU!"
    input = gets.chomp
  elsif input == "GOODBYE!"
    counter = 1
    while counter < 2
      puts "IS THERE ANYTHING ELSE I CAN HELP WITH?"
      input = gets.chomp
      counter += 1
      ready_to_quit = true
    end
  end
  puts "THANK YOU FOR CALLING!"
end
