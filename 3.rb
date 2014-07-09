prime_factors = []
main_number = 12
working_number = main_number
working_factor = 2

while working_factor < working_number do
  if working_number % working_factor == 0
    prime_factors.push(working_factor)
    working number /= working_factor    
    working_factor = 2 unless working_factor == working_number
  else
    working_factor++
  end
end

puts "The largest prime factor is " + prime_factors.max
