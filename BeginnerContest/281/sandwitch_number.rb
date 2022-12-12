s = gets(chomp: true).split('')
first_s = s[0]
if !first_s.match(/[A-Z]/)
  puts "No"
  return
end

second_s = s[1..6].join('')
if !second_s.match(/[0-9]{6}/)
  puts "No"
  return
else
  int_second_s = second_s.to_i
  if int_second_s < 100000
    puts "No"
    return
  end
end


third_s = s[7].to_s
if !third_s.match(/[A-Z]/)
  puts "No"
  return
end

puts "Yes"
