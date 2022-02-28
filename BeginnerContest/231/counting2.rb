nq = gets(chomp: true).split(' ').map(&:to_i)

n = nq[0]
q = nq[1]

a = gets(chomp: true).split(' ').map(&:to_i)

x = []
1.upto(q).each do |i|
  x << gets(chomp: true).to_i
end

a.sort!

x.each do |xi|
  if a[-1] < xi
    puts 0
    next
  end

  index = a.bsearch_index { |ai| ai >= xi }
  result = a.length - index
  puts result
end
