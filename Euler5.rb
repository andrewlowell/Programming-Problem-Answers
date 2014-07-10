divisible_numbers = []
divisors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]
finished = false
working_number = 21 
unless finished
  divisible_answers = []
  for i in (0..divisors.length - 1)
    if working_number % divisors[i] == 0
      divisible_answers.push(true)
    else
      divisible_answers.push(false)
    end
  end
  if divisible_answers.include?(false)
    working_number += 1
  else
    puts "The smallest evenly divisible number is: " + "#{working_number}"
    finished = true
  end
end
