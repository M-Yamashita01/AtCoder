def factorial(number)
  if number.zero?
    1
  else
    number * factorial(number - 1)
  end
end

pi = gets(chomp: true).to_i

yen = []
1.upto(10).each do |i|
  yen << factorial(i)
end

result = pi
num = 0
while result > 0 do
  9.downto(0).each do |i|
    if result - yen[i] >= 0
      num += 1
      result -= yen[i]
      break
    end
  end
end

puts num