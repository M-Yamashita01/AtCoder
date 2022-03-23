np = gets(chomp: true).split(' ').map(&:to_i)

p = np[1]
a = gets(chomp: true).split(' ').map(&:to_i)

result = a.sort.select do |ai|
  ai < p
end

puts result.size
