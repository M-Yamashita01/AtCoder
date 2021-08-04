nm = gets(chomp: true).split(' ').map(&:to_i)
an = gets(chomp: true).split(" ").map(&:to_i)
bm = gets(chomp: true).split(" ").map(&:to_i)

n = nm[0]
m = nm[1]

an.sort!
bm.sort!

prev_result = 0

x = 0
y = 0

while (x < n) && (y < m)
  result = (an[x] - bm[y]).abs

  if x.zero? && y.zero?
    prev_result = result
  elsif result < prev_result
    prev_result = result
  end

  if (an[x] - bm[y]) > 0
    y += 1
  else
    x += 1
  end
end

puts prev_result