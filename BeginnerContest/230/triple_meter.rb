s = gets(chomp: true).to_s

t = 'oxxoxxoxxoxxoxxoxx'
if t.include?(s)
  puts 'Yes'
else
  puts 'No'
end