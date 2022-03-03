ab = gets(chomp: true).split(' ').map(&:to_i)
a = ab[0]
b = ab[1]
flag = false

while a > 0 || b > 0
  a_surplus = a % 10
  b_surplus = b % 10
  if a_surplus + b_surplus > 9
    flag = true
    break
  else
    a = a / 10
    b = b / 10
  end
end
if flag
  puts 'Hard'
else
  puts 'Easy'
end
