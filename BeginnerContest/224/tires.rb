s = gets(chomp: true).split('').map(&:to_s)

if s.last(2).join == 'er'
  puts 'er'
elsif s.last(3).join == 'ist'
  puts 'ist'
end
