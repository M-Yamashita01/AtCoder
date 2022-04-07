n = gets(chomp: true).to_i

counter = 0
continue_loop = true
while continue_loop do 

  result = 2**counter
  if result > n
    puts counter - 1
    continue_loop = false
  end
  counter += 1
end
