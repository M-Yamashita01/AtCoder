st = gets(chomp: true).split(' ').map(&:to_i)
s = st[0]
t = st[1]

sum_combination_list = []
0.upto(s).each do |a|
  0.upto(s).each do |b|
    break if s < a + b

    0.upto(s).each do |c|
      if a + b + c <= s
        sum_combination_list << [a, b, c]
      end
    end
  end
end

result = []
0.upto(sum_combination_list.size - 1).each do |i|
  abc = sum_combination_list[i]
  if abc[0] * abc[1] * abc[2] <= t
    result << sum_combination_list[i]
  end
end

puts result.size