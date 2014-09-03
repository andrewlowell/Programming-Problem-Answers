prime_numbers = [2,3]
working_n = 1
working_multiples = []
finished = false
while prime_numbers.last < 2000000
  working_multiples[0] = 6 * working_n - 1
  #puts "First multiple is #{working_multiples[0]}"
  working_multiples[1] = 6 * working_n + 1
  #puts "Second multiple is #{working_multiples[1]}"
  working_multiples.each do |x|
    working_position = 0
    finished = false
    while not finished
      if x % prime_numbers[working_position] == 0
        puts "#{x} is not prime."
        finished = true
      elsif working_position == prime_numbers.size - 1
        prime_numbers.push(x)
        puts "Added #{x} to primes."
        finished = true
      else
        working_position += 1
      end
    end  
  end
  working_n += 1
end

puts "The sum of the primes is " + (prime_numbers.inject(:+) - prime_numbers.last).to_s
