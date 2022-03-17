s = gets(chomp: true).to_s

size = s.split('').uniq.size
result = 0
if size == 3
  result = size * (size - 1)
else
  result = size * (size - 1) + 1
end
puts result