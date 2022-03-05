nw = gets(chomp: true).split(' ').map(&:to_i)
n = nw[0]
w = nw[1]

ab_values = {}
1.upto(n).each do |i|
  ab = gets(chomp: true).split(' ').map(&:to_i)
  a = ab[0]
  b = ab[1]
  if ab_values.key?(a)
    ab_values[a] = ab_values[a] + b
  else
    ab_values[a] = b
  end
end

sorted_ab_values = ab_values.sort.reverse.to_h

result = 0
remainder = w
sorted_ab_values.each do |key, value|
  times = 0
  if remainder < value
    times = remainder
    num = 0
  else
    num = remainder - value
    times = value
  end

  result += (key * times)
  if num == 0
    break
  end

  remainder = num
end

puts result
