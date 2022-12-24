nm = gets.chomp.split(' ').map(&:to_i)
n = nm[0]
m = nm[1]
s = Array.new(n, "")
0.upto(n - 1).each do |i|
  si = gets.chomp.split('').map(&:to_s)
  s[i] = si.map do |si_index|
    if si_index == "o"
      1
    else
      0
    end
  end
end

count = 0

if n == 2
  result = [s[0], s[1]].transpose.map{|k| k.inject(:+)}
  if result.all? { |e| e == 1 }
    count += 1
  end
else
  0.upto(n - 2).each do |i|
    (i + 1).upto(n - 1).each do |j|
      result = [s[i], s[j]].transpose.map{|k| k.inject(:+)}
      if result.all? { |e| e >= 1 }
        count += 1
      end
    end
  end
end

puts count