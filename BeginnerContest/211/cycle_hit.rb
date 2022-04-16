cycle_hit = ['H', '2B', '3B', 'HR']
result = []
result << gets(chomp: true).to_s
result << gets(chomp: true).to_s
result << gets(chomp: true).to_s
result << gets(chomp: true).to_s

if (cycle_hit - result).empty?
  puts 'Yes'
else
  puts 'No'
end