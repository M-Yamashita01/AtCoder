ab = gets(chomp: true).split(' ').map(&:to_f)
a = ab[0]
b = ab[1]

puts (a - b) / 3.0 + b