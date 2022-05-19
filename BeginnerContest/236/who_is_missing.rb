n = gets(chomp: true).to_i
a = gets(chomp: true).split(' ').map(&:to_i)

grouped_a = a.group_by(&:itself).map{|k, v| [k, v.size]}.sort_by{|k, v| -v}.to_a
puts grouped_a[-1][0]