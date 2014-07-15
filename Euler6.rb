sum = 0
power1 = 0
for i in (1..100)
  power1 += i**2
end

for i in (1..100)
  sum += i
end

puts sum**2 - power1
