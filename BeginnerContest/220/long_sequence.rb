n = gets(chomp: true).to_i
a = gets(chomp: true).split(' ').map(&:to_i)
x = gets(chomp: true).to_i


limit = 10**100
a_sum = a.sum
last_result = 0
last_index = 0
prev_index = 0
0.upto(limit - 1).each do |i|
  last_result += a_sum
  if last_result > x
    last_result -= a_sum
    prev_index = i - 1
    break
  end
end

last_index = (prev_index + 1) * n
0.upto(n - 1).each do |i|
  last_result += a[i]
  if last_result > x
    puts (i + 1) + last_index
    break
  end
end