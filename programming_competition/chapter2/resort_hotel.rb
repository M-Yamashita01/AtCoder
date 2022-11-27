n = gets(chomp: true).to_i

an = gets(chomp: true).split(' ').map(&:to_i)

d = gets(chomp: true).to_i

0.upto(d - 1).each do |i|
  lr = gets(chomp: true).split(' ').map(&:to_i)
  l = lr[0]
  r = lr[1]

  first_an = an[0..(l - 1 - 1)]
  last_an = an[r..-1]

  first_an.sort!
  last_an.sort!
  if first_an[-1] >= last_an[-1]
    puts first_an[-1]
  else
    puts last_an[-1]
  end
end

