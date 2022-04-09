n = gets(chomp: true).to_i

if 1 <= n && n <= 125
  puts '4'
elsif 126 <= n && n <= 211
  puts '6'
else   
  puts '8'
end