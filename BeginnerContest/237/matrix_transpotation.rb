hw = gets(chomp: true).split(' ').map(&:to_i)
h = hw[0]
w = hw[1]
a = []
0.upto(h - 1).each do |i|
  aw = gets(chomp: true).split(' ').map(&:to_i)
  a << aw
end

transposed_a = a.transpose

0.upto(w - 1).each do |i|
  puts transposed_a[i].join(' ')
end
