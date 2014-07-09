sum = 0
term1 = 1
term2 = 2 
while term2 < 4000000 do
  if term2 % 2 == 0
    sum += term2
  end
  temp = term1 +term2
  term1 = term2
  term2 = temp
end

puts sum
