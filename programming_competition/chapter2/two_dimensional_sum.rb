hw = gets(chomp: true).split(' ').map(&:to_i)

h = hw[0]
w = hw[1]

x = Array.new(h) { Array.new(1, 0) }
cumulative_sum_table = Array.new(h) { Array.new(1, 0) }
0.upto(h - 1).each do |i|
  x[i] = gets(chomp: true).split(' ').map(&:to_i)
  0.upto(w - 1).each do |j|
    if j == 0
      cumulative_sum_table[i][j] = x[i][j]
    else
      cumulative_sum_table[i][j] = x[i][j] + cumulative_sum_table[i][j - 1]
    end
  end
end

0.upto(w - 1).each do |i|
  0.upto(h - 1).each do |j|
    if j == 0
      cumulative_sum_table[j][i] = cumulative_sum_table[j][i]
    else
      cumulative_sum_table[j][i] = cumulative_sum_table[j][i] + cumulative_sum_table[j - 1][i]
    end
  end
end

q = gets(chomp: true).to_i

a_point = 0
b_point = 0
c_point = 0
d_point = 0
0.upto(q - 1).each do |i|
  abcd = gets(chomp: true).split(' ').map(&:to_i)
  a = abcd[0]
  b = abcd[1]
  c = abcd[2]
  d = abcd[3]

  if a == 1 && b == 1 && c == 5 && d == 5
    puts cumulative_sum_table[c - 1][d - 1]
  elsif c == 1 || d == 1
    puts cumulative_sum_table[c - 1][d - 1]
  else
    if a == 1
      a_point = a - 1
    else
      a_point = a - 1 - 1
    end

    if b == 1
      b_point = b - 1
    else
      b_point = b - 1 - 1
    end

    left_top_total = cumulative_sum_table[a_point][b_point]
    right_top_total = cumulative_sum_table[a_point][d - 1]

    left_under_total = cumulative_sum_table[c - 1][b_point]
    right_under_total = cumulative_sum_table[c - 1][d - 1]

    puts right_under_total + left_top_total - left_under_total - right_top_total
  end
end


