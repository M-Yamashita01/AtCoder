mn = gets(chomp: true).split(' ').map(&:to_i)
s = gets(chomp: true).split(' ').map(&:to_s)
t = gets(chomp: true).split(' ').map(&:to_s)

m = mn[0]
n = mn[1]

result = s - t

0.upto(m - 1).each do |i|
  if result.include?(s[i])
    puts 'No'
  else
    puts 'Yes'
  end
end
