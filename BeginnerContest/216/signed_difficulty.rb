xy = gets(chomp: true).split('.').map(&:to_i)
x = xy[0]
y = xy[1]

postfix = ''
if 0 <= y && y <= 2
  postfix = '-'
elsif 7 <= y && y <= 9
  postfix = '+'
end

puts x.to_s + postfix