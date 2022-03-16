n = gets(chomp: true).to_i

lan = []
1.upto(n).each do |i|
  la = gets(chomp: true).split(' ').map(&:to_i)
  lan << la
end

if lan.size == 1
  puts 1
  return
end

puts lan.uniq.size
