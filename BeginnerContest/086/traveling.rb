n = gets(chomp: true).to_i

t = []
x = []
y = []
1.upto(n).each do |n|
  txy = gets(chomp: true)

  txy_arr = txy.split(' ').map(&:to_i)
  t << txy_arr[0]
  x << txy_arr[1]
  y << txy_arr[2]
end

y_prev = 0
flag = false
t.each_with_index do |ti, index|
  xi = x[index]
  yi = y[index]
  flag = false
  y_prev = y[index - 1] if index > 0

  if (ti + y_prev).even?
    0.upto(ti + y_prev).each do |i|
      next if (i % 2).odd?

      flag = true if (xi + yi == i)

      break if flag == true
    end
  else
    1.upto(ti + y_prev).each do |i|
      next if (i % 2).even?

      flag = true if (xi + yi == i)

      break if flag == true
    end
  end
  if flag == false
    puts 'No'
    break
  end

end

if flag == true
  puts 'Yes'
end