n = gets(chomp: true).to_i

ab = []
0.upto(n - 1).each do |i|
  ab << gets(chomp: true).split(' ').map(&:to_f)
end

ti = 0
0.upto(n - 1).each do |i|
  a_left = ab[i][0]
  b_left = ab[i][1]

  ti += a_left / b_left
end

t = ti / 2

ans = 0
0.upto(n - 1).each do |i|
  a_left = ab[i][0]
  b_left = ab[i][1]
  d = t * b_left
  if d < a_left
    ans += d
  else
    ans += a_left
  end

  t_left = a_left / b_left
  if t_left <= t
    t = t - t_left
  else
    t = 0
  end
end

puts ans