ab = gets(chomp: true).split(' ').map(&:to_i)

a = ab[0]
b = ab[1]

puts 32 ** (a - b)