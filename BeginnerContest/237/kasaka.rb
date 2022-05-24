def reversible?(s)
  is_reversible = false
  if s.length.even?
    is_reversible = false
  elsif s.length == 1
    is_reversible = true
  else
    sliced_num = s.length / 2
    s.delete_at(sliced_num)
    sliced_s = s.each_slice(sliced_num).to_a

    if (sliced_s[0] - sliced_s[1]).length.zero?
      is_reversible = true
    else
      is_reversible = false
    end
  end

  is_reversible
end

s = gets(chomp: true).split('').map(&:to_s)

a_max = 0
(s.length - 1).downto(0).each do |i|
  si = s[i]
  if s.length == 1
    break
  elsif si == 'a'
    a_max += 1
  else
    break
  end
end

if a_max == 0
  if reversible?(s)
    puts 'Yes'
  else
    puts 'No'
  end

  return
end

flag = false
1.upto(a_max).each do |i|
  s.unshift('a')
  if reversible?(s)
    flag = 'true'
    break
  end
end

if flag
  puts 'Yes'
else
  puts 'No'
end
