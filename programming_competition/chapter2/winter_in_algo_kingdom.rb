hwn = gets(chomp: true).split(' ').map(&:to_i)
h = hwn[0]
w = hwn[1]
n = hwn[2]

table = Array.new(h) { Array.new(w, 0) }
cumulative_sum = Array.new(h) { Array.new(w, 0) }
0.upto(n - 1).each do |i|
  abcd = gets(chomp: true).split(' ').map(&:to_i)

  a = abcd[0]
  b = abcd[1]
  c = abcd[2]
  d = abcd[3]

  table[a - 1][b - 1] = table[a - 1][b - 1] + 1
  table[a - 1][d] = table[a - 1][d] - 1

  table[c][b - 1] = table[c][b - 1] - 1
  table[c][d] = table[c][d] + 1
end

0.upto(h - 1).each do |i|
  0.upto(w - 1).each do |j|
    if j == 0
      cumulative_sum[i][j] = table[i][j]
    else
      cumulative_sum[i][j] = table[i][j] + cumulative_sum[i][j - 1]
    end
  end
end

0.upto(w - 1).each do |j|
  0.upto(h - 1).each do |i|
    if i == 0
      cumulative_sum[i][j] = cumulative_sum[i][j]
    else
      cumulative_sum[i][j] = cumulative_sum[i][j] + cumulative_sum[i - 1][j]
    end
  end
end



puts cumulative_sum.map { |e| e.join(' ')}
