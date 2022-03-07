stx = gets(chomp: true).split(' ').map(&:to_i)
s = stx[0]
t = stx[1]
x = stx[2]

if s < t
  if s <= x && x < t
    puts 'Yes'
  else
    puts 'No'
  end
else
  if x < t || s <= x
    puts 'Yes'
  else
    puts 'No'
  end
end
