n = gets(chomp: true).to_i

s = []
1.upto(n).each do |i|
  si = gets(chomp: true).to_s

  s << si
end

grouped_s = s.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

prev_value = 0
prev_key = ''
grouped_s.each do |key, value|
  if prev_key == '' || prev_value < value
    prev_key = key
    prev_value = value
  end
end

puts prev_key
