n = gets(chomp: true).to_i
an = gets(chomp: true).split(' ').map(&:to_i)


sorted_an = an.sort
sorted_an.uniq!

compressed_an = sorted_an.dup

b = Array.new(n, 0)
0.upto(an.length - 1).each do |i|
  0.upto(compressed_an.length - 1).each do |j|
    if an[i] == compressed_an[j]
      b[i] = j + 1
    end
  end
end

puts b.join(' ')