def sharp_list(s, n)
  sharp_list_s = []
  0.upto(n - 1).each do |i|
    0.upto(n - 1).each do |j|
      if s[i][j] == '#'
        sharp_list_s << [i, j]
      end
    end
  end

  sharp_list_s
end

def same_shape_for_xy?(sharp_list_s, sharp_list_t, xy_str)
  index = 0
  if xy_str == 'y'
    index = 1
  end

  distance = 0
  0.upto(sharp_list_s.length - 1).each do |i|
    sharp_s = sharp_list_s[i]
    sharp_t = sharp_list_t[i]

    if i == 0
      distance = sharp_s[index] - sharp_t[index]
    elsif sharp_s[index] - sharp_t[index] != distance
      return false
    end
  end

  true
end

n = gets(chomp: true).to_i
s = []
t = []
0.upto(n - 1).each do |i|
  s << gets(chomp: true).split('').map(&:to_s)
end

0.upto(n - 1).each do |i|
  t << gets(chomp: true).split('').map(&:to_s)
end

same_flag = false
sharp_list_t = sharp_list(t, n)
puts '--t--'
p t
0.upto(3).each do |rotate_index|
  if rotate_index != 0
    s = s.transpose
  end

  puts '----'
  p s

  sharp_list_s = sharp_list(s, n)

  same_flag = same_shape_for_xy?(sharp_list_s, sharp_list_t, 'x')
  puts "same_flag x: #{same_flag}"
  if same_flag
    same_flag = same_shape_for_xy?(sharp_list_s, sharp_list_t, 'y')
    puts "same_flag y: #{same_flag}"
  end

  if same_flag
    break
  end
end

if same_flag
  puts 'Yes'
else
  puts 'No'
end



# sample = [[1,2],[3,4]]
# p sample
# p sample.transpose



# puts '-----'
# p s
# puts '-----'
# p s.transpose
