s = gets(chomp: true).split('').map(&:to_s)
ab = gets(chomp: true).split(' ').map(&:to_i)

a = ab[0]
b = ab[1]

s_a = s[a - 1]
s_b = s[b - 1]

s[b - 1] = s_a
s[a - 1] = s_b

puts s.join('')
