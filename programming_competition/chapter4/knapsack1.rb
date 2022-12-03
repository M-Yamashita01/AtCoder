nw = gets(chomp: true).split(' ').map(&:to_i)

n = nw[0]
w = nw[1]

wv = Array.new(n) { Array.new(2, 0) }
0.upto(n - 1).each do |i|
  wv[i] = gets(chomp: true).split(' ').map(&:to_i)
end

dp = Array.new(n + 1) { Array.new(w + 1, 0)}

dp[0][0] = 0

1.upto(n).each do |i|
  0.upto(w).each do |j|
    if j < wv[i - 1][0]
      dp[i][j] = dp[i - 1][j]
    else
      if dp[i - 1][j] < dp[i -1][j - wv[i - 1][0]] + wv[i - 1][1]
        dp[i][j] = dp[i -1][j - wv[i - 1][0]] + wv[i - 1][1]
      else
        dp[i][j] = dp[i -1][j]
      end
    end
  end
end

puts dp.map { |e|e.join(' ') }

result = 0
0.upto(n).each do |i|
  0.upto(w).each do |j|
    if result < dp[i][j]
      result = dp[i][j]
    end
  end
end

puts result