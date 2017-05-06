
  # card_number = "4929735477250543"
  #
  #  valid = false

   #Your Luhn Algorithm Here
  class CreditCheck
    attr_reader :card_num

    def initialize(card_num)
      # takes the value from the input
      @card_num = card_num
    end

    def reverse_split
      # splits the string into chars and reverses them
      card_num.chars.reverse.map(&:to_i)
    end

    def square_odd
      # squares every other number starting from the right with the reversed
      reverse_split.map.with_index {|num, i| i.even? ? num : num * 2}


    end

    def over_ten_sum
      #splits the numbers over 10 into seperate digit and sums them
      square_odd.map do |num|
        if num > 9
          num.to_s.chars.each_slice(2).map { |num_1, num_2| num_1.to_i + num_2.to_i }
        else
          num
        end
      end.flatten
    end

    def summed_number
      #sums the array
      over_ten_sum.reduce(:+)
    end
# binding.pry
    def validate
      #validates the number if divisible by 10
      if summed_number % 10 == 0
        puts "The number is valid!"
      else
        puts "The number is invalid!"
      end
    end
  end

 #   #Output
 #   If it is valid, print "The number is valid!"
 #   If it is invalid, print "The number is invalid!
 new_num = CreditCheck.new("5101823508024124")
 p new_num.validate
