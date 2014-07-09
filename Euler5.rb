divisible_numbers = []
divisors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]
finished = false
working_number = 0
unless finished
  divisible_answers = []
  for x in divisors
    if working_number % x == 0
      divisible_answers.push(true)
    else
      divisible_answers.push(false)
    end
  end
  if divisible_answers.include? false
    working_number += 1
  else
    puts "The smallest evenly divisible number is: " + "#{working_number}"
    finished = true
  end
end
