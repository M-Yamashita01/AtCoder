ab = gets(chomp: true).split(' ').map(&:to_s)

a = ab[0]
b = ab[1]

num = (a + b).to_i

1.upto(num/2).each do |n|
  if n * n == num
    puts 'Yes'
    break
  elsif n * n > num
    puts 'No'
    break
  end
end
