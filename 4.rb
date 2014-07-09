palindromes = []
for i in (100..999)
  for j in (100..999)
    product = i * j
    working_string = product.to_s
    while working_string.length > 1
      end_letters = /(.)(.*)(.)/.match(working_string)
      if end_letters[1] == end_letters[3]
        working_string = end_letters[2]
        if working_string.length == 1 || working_string.length == 0
          palindromes.push(product)
          puts "Added palindrome: " + "#{product}"
        end
      else
        working_string = ""
      end
    end
  end
end

puts "The largest palindrome is: " + "#{palindromes.max}"
