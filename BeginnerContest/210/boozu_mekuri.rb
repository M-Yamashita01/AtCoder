n = gets(chomp: true).to_i
s = gets(chomp: true).split('').map(&:to_s)

index = s.find_index('1')
if index.even?
  puts 'Takahashi'
else
  puts 'Aoki'
end
