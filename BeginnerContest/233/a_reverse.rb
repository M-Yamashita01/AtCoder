lr = gets(chomp: true).split(' ').map(&:to_i)
l = lr[0]
r = lr[1]

new_l = l-1
new_r = r-1

s = gets(chomp: true).to_s

str_array = s.split(//)
l_r_array = str_array[new_l..new_r]
first_array = []
first_array = str_array[0..new_l-1] if new_l != 0

last_array = []
last_array = str_array[new_r+1..str_array.size] if new_r != str_array.size
reversed_array = l_r_array.reverse

puts first_array.join('') + reversed_array.join('') + last_array.join('')
