coordinate_grid = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
for i in (0..19)
  for j in (0..19)
    coordinate_grid[i][j] = [i,j]
    puts "[#{i},#{j}]"
  end
end

for i in (0..19)
  puts coordinate_grid[i].inspect
end
