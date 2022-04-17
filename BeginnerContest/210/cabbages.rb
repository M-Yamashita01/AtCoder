naxy = gets(chomp: true).split(' ').map(&:to_i)
n = naxy[0]
a = naxy[1]
x = naxy[2]
y = naxy[3]

if n <= a
  puts n * x
  return
else
  puts a * x + (n - a) * y
end
