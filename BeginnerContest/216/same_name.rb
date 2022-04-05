n = gets(chomp: true).to_i
st=[]
0.upto(n - 1).each do |i|
  sti = gets(chomp: true).split(' ').map(&:to_s)
  st << sti[0] + '.' + sti[1]
end

removed_duplicate_st = st.uniq
if st.size == removed_duplicate_st.size
  puts 'No'
else
  puts 'Yes'
end
