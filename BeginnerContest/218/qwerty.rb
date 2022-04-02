p = gets(chomp: true).split(' ').map(&:to_i)

alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')

result = ''
0.upto(p.length - 1).each do |i|
  result += alphabet[(p[i] - 1)]
end

puts result
