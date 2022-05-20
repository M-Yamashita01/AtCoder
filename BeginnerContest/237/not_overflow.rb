n = gets(chomp: true).to_i

if -2**31 <= n && n < 2**31
  puts 'Yes'
else
  puts 'No'
end
