s = []
1.upto(3).each do |i|
  s << gets(chomp: true).to_s
end

contest = ['ABC', 'ARC', 'AGC', 'AHC']

puts contest - s 


