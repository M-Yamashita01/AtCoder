s1 = gets(chomp: true).to_s
s2 = gets(chomp: true).to_s

s = s1 + s2
if s == '#..#' || s == '.##.'
  puts 'No'
else
  puts 'Yes'
end