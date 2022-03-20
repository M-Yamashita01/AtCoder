nm = gets(chomp: true).split(' ').map(&:to_i)
n = nm[0]
m = nm[1]

b = []
0.upto(n - 1).each do |i|
  b << gets(chomp: true).split(' ').map(&:to_i)
end

matrix_x = Array.new(n) { Array.new(m, 0) }
matrix_y = Array.new(n) { Array.new(m, 0) }
0.upto(n - 1).each do |ni|
  0.upto(m - 1).each do |mi|
    matrix_x[ni][mi] = (b[ni][mi] + 6) / 7
    matrix_y[ni][mi] = (b[ni][mi] - 1) % 7 + 1
  end
end

answer = "Yes"
stop_loop_flag = false
0.upto(n - 1).each do |ni|
  0.upto(m - 1).each do |mi|
    if (0 < ni && matrix_x[ni][mi] != matrix_x[ni - 1][mi] + 1)
      answer = "No"
      stop_loop_flag = true
    end

    if (0 < mi && matrix_y[ni][mi] != matrix_y[ni][mi - 1] + 1)
      answer = "No"
      stop_loop_flag = true
    end

    if (0 < mi && matrix_x[ni][mi] != matrix_x[ni][mi - 1])
      answer = "No"
      stop_loop_flag = true
    end

    if (0 < ni && matrix_y[ni][mi] != matrix_y[ni - 1][mi])
      answer = "No"
      stop_loop_flag = true
    end

    break if stop_loop_flag
  end

  break if stop_loop_flag
end

puts answer