def find_factors(num)
	factors = [1,num]
	working_factor = 2
	while working_factor < num/working_factor
		if num % working_factor == 0
			factors.push(working_factor,num/working_factor)
			puts "factors #{working_factor} #{num/working_factor}"
		end
		working_factor += 1
	end
	return factors.uniq
end

triangle_numbers = [[1,2],[3,3],[6,4]]
finished = false
until finished
	now = triangle_numbers.last
	puts "Working on #{now[0]}."
	factors = find_factors(now[0])
	if factors.length > 500
		finished = true
	else
		triangle_numbers.push([now[0] + now[1], now[1] + 1])
	end
end

puts "The answer is #{triangle_numbers.last[0]}."
