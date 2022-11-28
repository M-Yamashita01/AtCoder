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

puts dp[-1]
