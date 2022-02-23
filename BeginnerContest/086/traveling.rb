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
x_prev = 0
t_prev = 0
flag = false
t.each_with_index do |ti, index|
  xi = x[index]
  yi = y[index]

  d = (xi - x_prev).abs + (yi - y_prev).abs
  dt = ti - t_prev
  if d > dt || (dt - d).odd?
    flag = false
    break
  else
    flag = true
    x_prev = xi
    y_prev = yi
    t_prev = ti
  end
end

if flag
  puts "Yes"
else
  puts "No"
end
