n = gets(chomp: true).to_i
an = gets(chomp: true).split(' ').map(&:to_i)

player = []
0.upto(n - 1).each do |i|
  player << [i, an[i]]
end

player.sort! { |a, b| a[1] <=> b[1] }
puts player[n - 2][0] + 1