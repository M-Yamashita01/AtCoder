n = gets(chomp: true).to_i
pi = gets(chomp: true).split(' ').map(&:to_i)

result = Array.new(n, 0)
0.upto(n - 1).each do |i|
  result[pi[i] - 1] = i + 1
end

puts result.join(' ')