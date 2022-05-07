abcd = gets(chomp: true).split(' ').map(&:to_f)

a = abcd[0]
b = abcd[1]
c = abcd[2]
d = abcd[3]

if c * d - b <= 0
  puts -1
  return
end

result = (a / (c * d - b)).ceil
puts result.to_i