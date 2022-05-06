abc = gets(chomp: true).split(' ').map(&:to_i)
abc.sort!

puts abc[1] + abc[2]
