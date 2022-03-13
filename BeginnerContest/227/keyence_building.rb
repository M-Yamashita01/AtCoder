n = gets(chomp: true).to_i
s = gets(chomp: true).split(' ').map(&:to_i)

incorrect = 0
s.sort!
0.upto(n - 1).each do |i|
  si = s[i]
  if si == 10
    next
  elsif si < 10
    incorrect += 1
    next
  end
  flag = false

  1.upto(si).each do |a|
    1.upto(si).each do |b|
      if si == 4 * a * b + 3 * a + 3 * b
        flag = true
        break
      end
    end

    break if flag
  end

  if !flag
    incorrect += 1
  end
end

puts incorrect