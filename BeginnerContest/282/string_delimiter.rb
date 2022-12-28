n = gets.chomp.to_i
s = gets.chomp.to_s

split_s = s.split('"')

result = 0.upto(split_s.length - 1).map do |i|
  if i.even?
    split_s[i].gsub(/,/, '.')
  else
    split_s[i]
  end
end

puts result.join("\"")