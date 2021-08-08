input_q = gets(chomp: true).to_i
stack_array = []
offset = 0
for q in 0..input_q - 1 do
  query = gets(chomp: true).split(' ').map(&:to_i)

  operation_number = query[0]
  xi = query[1] if query.size > 1

  if operation_number == 1
    stack_array.push(xi - offset)
  elsif operation_number == 2
    offset += xi
  elsif operation_number == 3
    stack_array.sort!
    num = stack_array.shift
    puts num + offset
  end
end
