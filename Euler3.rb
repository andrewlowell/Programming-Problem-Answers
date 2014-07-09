prime_factors = []
puts "Enter number to be factored:"
main_number = gets.to_i
working_number = main_number
working_factor = 2

while working_factor <= working_number
  if working_number % working_factor == 0
    prime_factors.push(working_factor)
    working_number = working_number / working_factor
    puts "Found prime factor: " + "#{working_factor}"
    if working_factor == working_number
      working_factor = working number + 1
    else
      working_factor = 2
    end
  else
    working_factor += 1
  end
end


puts "The largest prime factor is " + "#{prime_factors.max}"
