x = gets(chomp: true).to_i

if x >= 90
  puts 'expert'
  return
end

if x < 40
  puts 40 - x
elsif x < 70
  puts 70 - x
elsif x < 90
  puts 90 - x
end