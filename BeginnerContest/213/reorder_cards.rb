require 'pp'

hwn = gets(chomp: true).split(' ').map(&:to_i)
h = hwn[0]
w = hwn[1]
n = hwn[2]

array = Array.new(h) { Array.new(w, 0) }
1.upto(n).each do |i|
  ab = gets(chomp: true).split(' ').map(&:to_i)
  a = ab[0] - 1
  b = ab[1] - 1
  array[a][b] = i
end

pp array

(h - 1).downto(0).each do |i|
  if array[i].sum == 0
    array.delete_at(i)
  end
end

pp array

transposed_array = array.transpose.map(&:reverse)
pp transposed_array

(w - 1).downto(0).each do |i|
  if transposed_array[i].sum == 0
    transposed_array.delete_at(i)
  end
end

pp transposed_array

original_array = transposed_array.transpose.reverse

row_size = original_array.size
column_size = original_array[0].size
pp original_array
result = Array.new(n, 0)
0.upto(row_size - 1).each do |i|
  0.upto(column_size - 1).each do |j|
    num = original_array[i][j]
    if num != 0
      result[num - 1] = "#{(i + 1).to_s} #{(j + 1).to_s}"
    end
  end
end

result.each {|num| puts num}
