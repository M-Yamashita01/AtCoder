def battle(hand1, hand2)
  if (hand1 == 'G' && hand2 == 'C') ||
    (hand1 == 'C' && hand2 == 'P') ||
    (hand1 == 'P' && hand2 == 'G')
    1
  elsif (hand1 == 'G' && hand2 == 'G') ||
    (hand1 == 'C' && hand2 == 'C') ||
    (hand1 == 'P' && hand2 == 'P')
    0
  else
    -1
  end
end

nm = gets(chomp: true).split(' ').map(&:to_i)

n = nm[0]
m = nm[1]

a = []
0.upto(2 * n - 1).each do |i|
  a << gets(chomp: true).split('').map(&:to_s)
end

#ranking[][0]では勝数、ranking[][1]は番号
ranking = Array.new(2 * n) { Array.new(2, 0) }
0.upto(2 * n - 1).each do |i|
  ranking[i][1] = i
end

0.upto(m - 1).each do |mi|
  1.upto(n).each do |i|
    first_index = 2 * i - 1 - 1
    second_index = 2 * i - 1
    player1_index = ranking[first_index][1]
    player2_index = ranking[second_index][1]

    hand1 = a[player1_index][mi]
    hand2 = a[player2_index][mi]

    result = battle(hand1, hand2)

    if result.positive?
      ranking[first_index][0] += 1
    elsif result.negative?
      ranking[second_index][0] += 1
    end
  end

  ranking = ranking.sort { |x, y| (y[0] <=> x[0]).nonzero? || (x[1] <=> y[1]) }
end

0.upto(2 * n - 1).each do |i|
  ranking[i][0] = 0 if ranking[i][0] < 0 
end

ranking = ranking.sort { |x, y| (y[0] <=> x[0]).nonzero? || (x[1] <=> y[1]) }

0.upto(2 * n - 1).each do |i|
  puts ranking[i][1] + 1
end
