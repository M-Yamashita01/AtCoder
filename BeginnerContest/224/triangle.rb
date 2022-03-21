n = gets(chomp: true).to_i

xy = []
0.upto(n - 1).each do |i|
  xy[i] = gets(chomp: true).split(' ').map(&:to_i)
end

count = 0
0.upto(n - 1).each do |i|
  (i + 1).upto(n - 1).each do |j|
    (j + 1).upto(n - 1).each do |k|
      next if i == j || i == k || j == k

      result = (xy[i][0] - xy[k][0]) * (xy[j][1] - xy[k][1]) - (xy[j][0] - xy[k][0]) * (xy[i][1] - xy[k][1])
      count += 1 if result.abs > 0
    end
  end
end

puts count