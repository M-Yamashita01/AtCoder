abc = gets(chomp: true).split(' ').map(&:to_i)

a = abc[0]
b = abc[1]
c = abc[2]

1.upto(1000).each do |i|
  multiple_c = c * i
  break if multiple_c > 1000

  if a <= multiple_c && multiple_c <= b
    puts multiple_c
    return
  end
end

puts '-1'