n = gets(chomp: true).to_i

a = 0
0.upto(n - 1).each do |i|
  ta = gets(chomp: true).split(' ')
  tn = ta[0].to_s
  an = ta[1].to_i

  a_dash = a % 10000
  an_dash = an % 10000
  if tn == '+'
    a = a_dash + an_dash
    puts a % 10000
  elsif tn == '-'
    a = a_dash - an_dash
    puts a % 10000
  elsif tn == '*'
    a = a_dash * an_dash
    puts a % 10000
  end
end


