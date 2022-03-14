n = gets(chomp: true).to_i

ans = 0

a_max = Math.cbrt(n)

1.upto(a_max).each do |a|
  b_max = Math.sqrt(n/a)
  a.upto(b_max).each do |b|
    ans += n / (a * b) - b + 1
  end
end

puts ans
