nm = gets(chomp: true).split(' ').map(&:to_i)
an = gets(chomp: true).split(" ").map(&:to_i)
bm = gets(chomp: true).split(" ").map(&:to_i)

n = nm[0]
m = nm[1]

prev_result = (an[0] - bm[0]).abs

for num_n in 0..n - 1 do
  for num_m in 0..m - 1 do
    result = (an[num_n] - bm[num_m]).abs
    if result < prev_result
      prev_result = result
    end
  end
end

puts prev_result