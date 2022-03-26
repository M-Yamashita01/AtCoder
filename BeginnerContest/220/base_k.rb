def convert(a, k)
  ai = a.reverse.split('').map(&:to_i)
  a_length = a.length
  a_result = 0
  0.upto(a_length - 1).each do |i|
    a_result += (ai[i] * (k**i))
  end

  a_result
end

k = gets(chomp: true).to_i
ab = gets(chomp: true).split(' ').map(&:to_s)

a = ab[0]
b = ab[1]

if k == 10
  puts a * b
  return
else
  a_result = convert(a, k)
  b_result = convert(b, k)
  puts a_result * b_result
end