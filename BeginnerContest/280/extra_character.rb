s = gets(chomp: true).split('').map(&:to_s)
t = gets(chomp: true).split('').map(&:to_s)

index = 0
0.upto(s.length - 1).each do |i|
  if s[i] != t[i]
    index = i + 1
    break
  end
end

if index.zero?
  index = t.length
end

puts index

