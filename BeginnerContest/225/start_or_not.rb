n = gets(chomp: true).to_i

ab = Array.new(n + 1, 0)
1.upto(n - 1).each do |i|
  aibi = gets(chomp: true).split(' ').map(&:to_i)
  ab[aibi[0]] = ab[aibi[0]] + 1
  ab[aibi[1]] = ab[aibi[1]] + 1
end

flag = false
1.upto(n).each do |i|
  next if ab[i].nil?

  if ab[i] == n - 1
    puts 'Yes'
    flag = true
    break
  end
end

if flag == false
  puts 'No'
end
