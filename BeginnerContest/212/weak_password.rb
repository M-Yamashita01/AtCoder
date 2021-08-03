input = gets.chars
x1 = input[0].to_i
x2 = input[1].to_i
x3 = input[2].to_i
x4 = input[3].to_i

return puts 'Weak' if x1 == x2 && x1 == x3 && x1 == x4

flag = true
for num in 0..2 do
  if ((input[num].to_i + 1) == input[num + 1].to_i) ||
    (input[num] == '9' &&
    input[num + 1] == '0')
    flag = false
  else
    flag = true
    break
  end
end

puts 'Strong' if flag
puts 'Weak' if !flag
