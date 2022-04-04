s = gets(chomp: true).split(' ').map(&:to_s)

sorted_s = s.sort
if sorted_s.first == s.first
  puts 'Yes'
else
  puts 'No'
end