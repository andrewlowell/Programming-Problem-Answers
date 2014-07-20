for i in (1..333333)
  working_number = 6 * i + 1
  working_factor = 2
  prime_factors = []
  while working_factor <= working_number
    if working_number % working_factor == 0
      prime_factors.push(working_factor)
      working_number = working_number / working_factor
      if working_factor == working_number
        working_factor = working number + 1
      else
        working_factor = 2
      end
    else
      working_factor += 1
    end
  end
end


