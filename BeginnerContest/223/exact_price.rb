x = gets(chomp: true).to_i

if x / 100 >=1 && x % 100 == 0
  puts 'Yes'
else
  puts 'No'
end