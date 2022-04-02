n = gets(chomp: true).to_i
s = gets(chomp: true).split('').map(&:to_s)


if s[n - 1] == 'o'
  puts 'Yes'
else
  puts 'No'
end
