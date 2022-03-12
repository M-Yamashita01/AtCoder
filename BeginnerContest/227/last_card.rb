nka = gets(chomp: true).split(' ').map(&:to_i)

n = nka[0]
k = nka[1]
a = nka[2]

k_new = k - 1

if n == 1
  puts n
elsif a + k_new > n
  remainder = (a + k_new) % n
  if remainder.zero?
    puts n
  else
    puts remainder
  end
else
  puts a + k_new
end