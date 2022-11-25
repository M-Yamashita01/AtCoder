d = gets(chomp: true).to_i

n = gets(chomp: true).to_i

lr = Array.new(n) { Array.new(2, 0)}
0.upto(n - 1).each do |i|
  lri = gets(chomp: true).split(' ').map(&:to_i)

  lr[i] = [lri[0], lri[1]]
end

cumulative_sum = Array.new(d, 0)

0.upto(lr.length - 1).each do |i|
  lri = lr[i]
  (lri[0] - 1).upto(lri[1] - 1).each do |j|
    cumulative_sum[j] = cumulative_sum[j] + 1
  end
end

puts cumulative_sum