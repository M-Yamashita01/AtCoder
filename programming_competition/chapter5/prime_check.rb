q = gets(chomp: true).to_i
0.upto(q - 1).each do |i|
  flag = false
  x = gets(chomp: true).to_i
  n = Math.sqrt(x).floor

  2.upto(n).each do |j|
    if x % j == 0
      flag = true
      break
    end
  end

  if flag
    puts "No"
  else
    puts "Yes"
  end
end
