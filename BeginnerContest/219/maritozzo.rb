s1 = gets(chomp: true).to_s
s2 = gets(chomp: true).to_s
s3 = gets(chomp: true).to_s

t = gets(chomp: true).to_s

puts t.gsub('1', s1).gsub('2', s2).gsub('3', s3)

