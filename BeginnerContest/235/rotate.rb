abc = gets(chomp: true).split('').map(&:to_i)
a = abc[0]
b = abc[1]
c = abc[2]


puts a * 100 + b * 10 + c + b * 100 + c * 10 + a + c * 100 + a * 10 + b