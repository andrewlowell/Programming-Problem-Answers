possible_factors = []
for i in (1..998)
  for j in (1..998)
    possible_factors.push([i, j, 1000-i-j])
  end
end

for x in possible_factors
  if x[0]**2 + x[1]**2 == x[2]**2
    puts x[0]*x[1]*x[2]
  end
end
