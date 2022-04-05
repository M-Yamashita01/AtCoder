n = gets(chomp: true).to_i

result = ''
0.upto(119).each do |i|
  if n == 0
    break
  end

  if n.even?
    n = n / 2
    result += 'B'
  else
    n = n - 1
    result += 'A'
  end
end

puts result.reverse!
