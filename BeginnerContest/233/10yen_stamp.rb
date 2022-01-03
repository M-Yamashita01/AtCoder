xy = gets(chomp: true).split(' ').map(&:to_i)

x = xy[0]
y = xy[1]

result = y - x
if result > 0
  result2 = result / 10
  result3 = result % 10
  if result3 != 0
    puts result2 + 1
  else
    puts result2
  end
else
  puts 0
end