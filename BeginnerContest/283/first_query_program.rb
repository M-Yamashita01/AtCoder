n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
q = gets.chomp.to_i

0.upto(q - 1).each do |i|
  qi = gets.chomp.split(' ').map(&:to_i)
  if qi.length == 2
    puts a[qi[1] - 1]
  else
    a[qi[1] - 1] = qi[2]
  end
end
