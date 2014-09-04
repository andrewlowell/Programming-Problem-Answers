=begin
				*** Find all prime factors of a specified number.
=end

def find_all_prime_factors_of_a_number(number_to_be_factored)

	array_of_prime_factors = []
	
	working_number = number_to_be_factored
	working_factor = 2

	while working_factor <= working_number
		if working_number % working_factor == 0
		  prime_factors.push(working_factor)
		  working_number = working_number / working_factor
		  # puts "Found prime factor: " + "#{working_factor}"
		  if working_factor == working_number
		    working_factor = working number + 1
		  else
		    working_factor = 2
		  end
		else
		  working_factor += 1
		end
	end

	return array_of_prime_factors

end
