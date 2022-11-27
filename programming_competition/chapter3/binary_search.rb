nx = gets(chomp: true).split(' ').map(&:to_i)
n = nx[0]
x = nx[1]
an = gets(chomp: true).split(' ').map(&:to_i)

half_an = an.length / 2
while true do
  if an[half_an] == x
    puts half_an + 1
    break
  end

  if an[half_an] < x
    half_an = half_an + half_an / 2
  else
    half_an = half_an - half_an / 2
  end
end