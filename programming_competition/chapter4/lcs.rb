s = gets(chomp: true).split('').map(&:to_s)
t = gets(chomp: true).split('').map(&:to_s)

dp = Array.new(s.length + 1) { Array.new(t.length + 1, 0) }

0.upto(s.length).each do |i|
  0.upto(t.length).each do |j|
    if s[i - 1] == t[j - 1] && i >= 1 && j >= 1
      dp[i][j] = [(dp[i - 1][j - 1] + 1), dp[i - 1][j], dp[i][j - 1]].max
    elsif i >= 1 && j >= 1
      dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
    elsif i >= 1
      dp[i][j] = dp[i - 1][j]
    elsif j >= 1
      dp[i][j] = dp[i][j - 1]
    end
  end
end

puts dp.flatten.max