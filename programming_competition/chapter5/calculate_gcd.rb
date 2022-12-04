ab = gets(chomp: true).split(' ').map(&:to_i)
a = ab[0]
b = ab[1]

if a < b
  a1 = a
  b1 = b
else
  a1 = b
  b1 = a
end

while true do
  r = a1 % b1
  if r == 0
    puts b1
    break
  else
    a1 = b1
    b1 = r
  end
end
