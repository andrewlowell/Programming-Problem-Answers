#n_number = gets.to_i
#working_number = main_number
#working_factor = 2
#
#while working_factor <= working_number
#  if working_number % working_factor == 0
#    prime_factors.push(working_factor)
#    working_number = working_number / working_factor
#    puts "Found prime factor: " + "#{working_factor}"
#    if working_factor == working_number
#      working_factor = working number + 1
#    else
#      working_factor = 2
#    end
#  else
#    working_factor += 1
#  end
#end




divisors = [20,19,18,17,16,15,14,13,12,11]
working_multiple = divisors[0]
working_number = divisors[0]
puts "Initial working_multiple and working_number are #{working_multiple} and #{working_number}."
for i in (1..(divisors.length-1))
  while working_number % divisors[i] != 0
    working_number += working_multiple
  end
  working_multiple = working_number
  puts "New highest multiple is: #{working_multiple}."
end
puts working_number




=begin

# This code works, kind of...it takes absolutely, absolutely forever. It's a wildly inefficient algorithm. After doing some Googling, I'm going to try to implement another way.

divisible_numbers = []
divisors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]
finished = false
working_number = 20
while (!finished)
  divisible_answers = []
  for i in (0..divisors.length - 1)
    if working_number % divisors[i] == 0
      divisible_answers.push(true)
      puts "#{working_number} is divisible by #{divisors[i]}."
    else
      divisible_answers.push(false)
      puts "#{working_number} is not divisible by #{divisors[i]}."
      break
    end
  end
  if divisible_answers.include?(false)
    working_number += 20
    puts "We need to go up a working number! Now: #{working_number}"
  else
    puts "The smallest evenly divisible number is: " + "#{working_number}"
    finished = true
  end
end

=end
