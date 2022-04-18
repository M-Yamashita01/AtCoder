ab = gets(chomp: true).split(' ').map(&:to_i)
a = ab[0]
b = ab[1]

if a < b
  puts (b - a) + 1
else
  puts 0
end