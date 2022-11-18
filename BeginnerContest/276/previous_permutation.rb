n = gets(chomp: true).to_i
a = []
b = []


pn = gets(chomp: true).split(' ').map(&:to_i)
pi = []

0.upto(pn.length - 1).each do |i|
  pi << pn[i]
end

tmp = []
(pn.length - 3).downto(0).each do |i|
  if pi[i] > pi[i + 1] && pi[i + 1] < pi[i + 2]
    i.upto(pn.length - 1).each do |j|
      tmp << pi[j]
    end

    break
  end
end

0.upto(tmp.length - 1).each do |i|
  pn.delete(tmp[i])
end

previous_num = nil
1.upto(tmp.length - 1).each do |i|
  if tmp[0] > tmp[i]
    if previous_num.nil? || previous_num < tmp[i]
      previous_num = tmp[i]
    end
  end
end

tmp.delete(previous_num)
new_tmp = tmp.sort.reverse
puts pn.join(' ').to_s + ' ' + previous_num.to_s + ' ' + new_tmp.join(' ').to_s