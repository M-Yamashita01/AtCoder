input = gets.split(' ')
A = input[0].to_i
B = input[-1].to_i

if A > 0 && B == 0 
  puts 'Gold'
elsif A == 0 && B > 0 
  puts 'Silver'
elsif A > 0 && B > 0
  puts 'Alloy'
end

