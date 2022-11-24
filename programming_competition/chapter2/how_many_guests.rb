nq = gets(chomp: true).split(' ').map(&:to_i)
n = nq[0]
q = nq[1]

an = gets(chomp: true).split(' ').map(&:to_i)

lr = Array.new(q) { Array.new(2, 0) }
0.upto(q - 1).each do |i|
  lri = gets(chomp: true).split(' ').map(&:to_i)
  lr[i] = [lri[0], lri[1]]
end

cumulative_sum = Array.new(n, 0)

0.upto(n - 1).each do |i|
  if i == 0
    cumulative_sum[i] = an[i]
  else
    cumulative_sum[i] = cumulative_sum[i - 1] + an[i]
  end
end

0.upto(q - 1).each do |i|
  lri = lr[i]
  l = lri[0]
  r = lri[1]
  result = cumulative_sum[r - 1] - cumulative_sum[l - 2]
  puts result
end




