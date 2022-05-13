n = gets(chomp: true).to_i

x = []
y = []
0.upto(n-1).each do |i|
  xy = gets(chomp: true).split(' ').map(&:to_i)
  x << xy[0]
  y << xy[1]
end

prev_result = 0
0.upto(n - 1).each do |i|
  i.upto(n - 1).each do |j|
    
    result = Math.sqrt( ((x[j] - x[i])**2 + (y[j] - y[i])**2).abs )
    puts result
    if result > prev_result
      prev_result = result
    end
  end
end

puts prev_result
