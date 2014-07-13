














# This code works, kind of...it takes absolutely, absolutely forever. It's a wildly inefficient algorithm. After doing some Googling, I'm going to try to implement another way.

#divisible_numbers = []
#divisors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]
#finished = false
#working_number = 20
#while (!finished)
#  divisible_answers = []
#  for i in (0..divisors.length - 1)
#    if working_number % divisors[i] == 0
#      divisible_answers.push(true)
#      puts "#{working_number} is divisible by #{divisors[i]}."
#    else
#      divisible_answers.push(false)
#      puts "#{working_number} is not divisible by #{divisors[i]}."
#      break
#    end
#  end
#  if divisible_answers.include?(false)
#    working_number += 20
#    puts "We need to go up a working number! Now: #{working_number}"
#  else
#    puts "The smallest evenly divisible number is: " + "#{working_number}"
#    finished = true
#  end
#end
