n = gets(chomp: true).to_i
an = gets(chomp: true).split(' ').map(&:to_i)
puts an.uniq.size
