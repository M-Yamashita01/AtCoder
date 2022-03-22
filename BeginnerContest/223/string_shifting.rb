s = gets(chomp: true).split('').map(&:to_s)

shift_s_list = []
0.upto(s.length - 1).each do |i|
  shift_s_list << s.rotate(i).join
end

shift_s_list.sort_by!(&:to_s)

puts shift_s_list[0]
puts shift_s_list[-1]





