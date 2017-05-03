class Game
  @@answer = rand(1..100).to_s

  def hint
    random_number = @@answer.to_i
    if random_number % 5 == 0
      puts "It is divisbile by 5."
    elsif random_number % 3 == 0
      puts "It's divisbile by 3."
    elsif random_number % 2 == 0
      puts "It's divisbile by 2."
    end
    guessing
  end

  def cheat
    puts "Here ya go ya lazy SOB #{@@answer}"
    start
  end

  def wrong_answer
    if @guess == "hint"
      hint
    elsif @guess == "c"
      cheat
    elsif @guess < @@answer
      puts "You're too low."
      guessing
    elsif @guess > @@answer
      puts "You're  too high."
      guessing
    end
  end

  def guessing
    puts "What's your guess?"
    @guess = gets.chomp.downcase
    if @guess == @@answer
      right_answer
    else
      wrong_answer
    end
  end

  def right_answer
    puts "You got it right! Would you like to play again? y/n?"
    input = gets.chomp.downcase
    if input.include?("y")
      start
    else
      puts "Ok, BYE BYE!"
    end
  end

  def start
    puts "Would you like to play a guessing game? You have to pick
    a number between 1 and 100. Y or N?"
    choice = gets.chomp.downcase
    if choice.include?('y')
      guessing
    elsif choice.include?('n')
      puts "Ok, bye bye."
      exit
    else
      puts "It's a yes or no question!"
    end
  end
end

new_game = Game.new
new_game.start
