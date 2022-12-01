ns = gets(chomp: true).split(' ').map(&:to_i)
an = gets(chomp: true).split(' ').map(&:to_i)

n = ns[0]
s = ns[1]

dp = Array.new(n + 1) { Array.new(s + 1, false) }
dp[0][0] = true

1.upto(n).each do |i|
  0.upto(s).each do |j|
    if j < an[i - 1]
      if dp[i - 1][j] == true
        dp[i][j] = true
      else
        dp[i][j] = false
      end
    else
      if (dp[i - 1][j] == true || dp[i - 1][j - an[i - 1]] == true)
        dp[i][j] = true
      else
        dp[i][j] = false
      end
    end
  end
end

if dp[-1][-1]
  puts "Yes"
else
  puts "No"
end