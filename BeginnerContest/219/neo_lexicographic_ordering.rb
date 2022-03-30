x = gets(chomp: true).split('').map(&:to_s)
n = gets(chomp: true).to_i

s = []
0.upto(n - 1).each do |i|
  s << gets(chomp: true).to_s
end

alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')

replaced_s = []

0.upto(n - 1).each do |i|
  si = s[i]
  string_index = []
  0.upto(si.length - 1).each do |j|
    index = x.find_index(si[j])
    string_index << index.to_s
  end
  replaced_s << string_index
end

replaced_s.sort!

result = []
0.upto(n - 1).each do |i|
  replaced_si = replaced_s[i]
  replaced_string = ''
  0.upto(replaced_si.length - 1).each do |j|
    replaced_string += x[replaced_si[j].to_i]
  end
  result << replaced_string
end

puts result