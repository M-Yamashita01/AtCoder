nx = gets(chomp: true).split(' ').map(&:to_i)

n = nx[0]
x = nx[1]

a = []
a = gets(chomp: true).split(' ').map(&:to_i)

result = 0
0.upto(a.size - 1).each do |i|
  ai = a[i]
  ai = ai - 1 if (i + 1).even?

  result += ai
end

if result <= x
  puts 'Yes'
else
  puts 'No'
end
