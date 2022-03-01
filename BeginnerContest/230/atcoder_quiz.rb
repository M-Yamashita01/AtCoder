n = gets(chomp: true).to_i

result = result = format("%03d", n)
if n >= 42
  n = n + 1
  result = format("%03d", n)
end

puts "AGC#{result}"