n = gets(chomp: true).to_i

hi = gets(chomp: true).split(' ').map(&:to_i)

prev_height = 0
0.upto(n - 1).each do |i|
  h = hi[i]
  if prev_height >= h
    break
  end

  if prev_height < h
    prev_height = h
  end
end

puts prev_height