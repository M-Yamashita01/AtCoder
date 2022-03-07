s = gets(chomp: true).chars
t = gets(chomp: true).chars

alphabet = ('a'..'z').to_a

match_string = true
s_index = alphabet.find_index(s[0])
t_index = alphabet.find_index(t[0])
delta_index = t_index - s_index

replaced_s = ''
for num in 0..(s.size - 1) do
  s_index = alphabet.find_index(s[num])

  for 

  if ((26 - s_index) < delta_index)
    delta2_index = (26 - s_index) - delta_index
    replaced_s = alphabet[s_index + delta2_index]
  else
    replaced_s = alphabet[s_index + delta_index]
  end

  if replaced_s != t[num]
    match_string = false
    puts 'No'
    break
  end
end

puts 'Yes' if match_string
