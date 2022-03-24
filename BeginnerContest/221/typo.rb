s = gets(chomp: true).split('').map(&:to_s)
t = gets(chomp: true).split('').map(&:to_s)

if s == t
  puts 'Yes'
  return
end

changed_s = s.dup
0.upto(s.size - 2).each do |i|
  changed_s[i] = s[i + 1]
  changed_s[i + 1] = s[i]
  if t == changed_s
    puts 'Yes'
    return
  end
  changed_s = s.dup
end

puts 'No'