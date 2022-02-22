ab = gets(chomp: true).split(' ').map(&:to_i)

a = ab[0]
b = ab[1]

if (a * b) % 2 == 0
  puts 'Even'
else
  puts 'Odd'
end

