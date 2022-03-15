nk = gets(chomp: true).split(' ').map(&:to_i)

a = gets(chomp: true).split(' ').map(&:to_i)

n = nk[0]
k = nk[1]

a.sort!.reverse!
team_count = 0

while k <= a.size
  k_index = 0
  a.map! do |element|
    break if k_index == k

    k_index += 1
    element - 1
  end
  team_count += 1

  a.delete_if { |x| x.zero? }
end
puts team_count