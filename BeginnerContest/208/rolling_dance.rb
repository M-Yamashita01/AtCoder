ab = gets(chomp: true).split(' ').map(&:to_i)
a = ab[0]
b = ab[1]

if (a * 1 <= b) && (b <= a * 6)
  puts 'Yes'
else
  puts 'No'
end