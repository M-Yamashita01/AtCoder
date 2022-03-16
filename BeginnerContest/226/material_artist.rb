def recursive(skill_no, tka, except_element_no)
  tkan = tka[skill_no - 1]
  k = tkan[1]
  t = tkan[0]

  return t if k == 0

  a_begin = 2
  a_last = a_begin + k - 1
  a_begin.upto(a_last).each do |ai|
    prev_skill_no = tkan[ai]
    next if except_element_no.include?(prev_skill_no)

    except_element_no << prev_skill_no
    t += recursive(prev_skill_no, tka, except_element_no)
  end

  t
end

n = gets(chomp: true).to_i

tka = []
1.upto(n).each do |i|
  tka << gets(chomp: true).split(' ').map(&:to_i)
end

tkan = tka[-1]
except_element_no = []

t = tkan[0]
k = tkan[1]
a_begin = 2
a_last = a_begin + k - 1
a_begin.upto(a_last).each do |ai|
  prev_skill_no = tkan[ai]
  t += recursive(prev_skill_no, tka, except_element_no)
end

puts t