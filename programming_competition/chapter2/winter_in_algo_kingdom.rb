hwn = gets(chomp: true).split(' ').map(&:to_i)
h = hwn[0]
w = hwn[1]
n = hwn[2]

cumulative_sum = Array.new(h) { Array.new(w, 0) }
0.upto(n - 1).each do |i|
  abcd = gets(chomp: true).split(' ').map(&:to_i)

  a = abcd[0]
  b = abcd[1]
  c = abcd[2]
  d = abcd[3]

  (a - 1).upto(c - 1).each do |j|
    (b - 1).upto(d - 1).each do |k|
      cumulative_sum[j][k] = cumulative_sum[j][k] + 1
    end
  end
end

puts cumulative_sum.map { |e| e.join(' ')}
