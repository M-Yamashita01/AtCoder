s = gets(chomp: true).to_s
t = gets(chomp: true).to_s
if s.include?(t)
  puts 'Yes'
else
  puts 'No'
end