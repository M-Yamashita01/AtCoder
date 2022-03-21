hw = gets(chomp: true).split(' ').map(&:to_i)
h = hw[0]
w = hw[1]

a = Array.new(h)
0.upto(h - 1).each do |i|
  a[i] = gets(chomp: true).split(' ').map(&:to_i)
end

0.upto(h - 1).each do |i1|
  (i1 + 1).upto(h - 1).each do |i2|
    0.upto(w - 1).each do |j1|
      (j1 + 1).upto(w - 1).each do |j2|
        if a[i1][j1] + a[i2][j2] > a[i2][j1] + a[i1][j2]
          puts 'No'
          return
        end
      end
    end
  end
end

puts 'Yes'