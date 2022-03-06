s = gets(chomp: true).to_s

k = gets(chomp: true).to_i

len = s.size
result = 0
s_arr = s.split('').map(&:to_s)
for s_index in 0..len
  right_index = s_index
  puts '---'
  0.upto(k).each do |ki|
    right_base_index = right_index
    si_next = s_arr[right_base_index]
    break if si_next.nil?
      
    while si_next == 'X' do
      right_base_index += 1
      si_next = s_arr[right_base_index]
    end

    if si_next == '.'
      right_index = right_base_index
    end
    puts "right_index: #{right_index}"
  end

  next_result = right_index - s_index
  if result < next_result
    result = next_result
  end
end

puts result
