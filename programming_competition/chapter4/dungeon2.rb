n = gets(chomp: true).to_i
an = gets(chomp: true).split(' ').map(&:to_i)
bn = gets(chomp: true).split(' ').map(&:to_i)

dp = Array.new(n, 0)

dp[0] = 0
dp[1] = an[0]

2.upto(n - 1).each do |i|
  a = dp[i - 1] + an[i - 1]
  b = dp[i - 2] + bn[i - 2]
  if a < b
    dp[i] = a
  else
    dp[i] = b
  end
end

route = []
dup_n = n.dup
while true do
  route << dup_n

  if dup_n == 1
    break
  end

  current_index = dup_n - 1
  a_current_index = current_index - 1
  a = dp[current_index - 1] + an[a_current_index]
  if a == dp[current_index]
    dup_n = dup_n - 1
  else
    dup_n = dup_n - 2
  end
end

puts route.length
puts route.reverse.join(' ')
