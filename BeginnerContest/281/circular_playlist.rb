nt = gets(chomp: true).split(' ').map(&:to_i)
an = gets(chomp: true).split(' ').map(&:to_i)
n = nt[0]
t = nt[1]
total_time = an.sum

check_t = t
if total_time <= t
  check_t = t % total_time
end

an_sum = 0
0.upto(n - 1).each do |i|
  an_sum += an[i]
  if check_t <= an_sum
    puts "#{i + 1} #{check_t - (an_sum - an[i])}"
    break
  end
end