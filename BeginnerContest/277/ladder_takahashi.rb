n = gets(chomp: true).to_i
a = []
b = []


0.upto(n - 1).each do |i|
  ab = gets(chomp: true).split(' ').map(&:to_i)

  a << ab[0]
  b << ab[1]
end

sorted_a = a.sort
sorted_b = b.sort
last_a = sorted_a.pop
last_b = sorted_b.pop

tree = []
if last_a <= last_b
  tree = Array.new(last_b) { Array.new(1, '') }
else
  tree = Array.new(last_a) { Array.new(1, '') }
end

0.upto(n - 1).each do |i|
  if tree[a[i] - 1] == [""]
    tree[a[i] - 1] = [(b[i] - 1)]
  else
    tree[a[i] - 1] << (b[i] - 1)
  end

  if tree[b[i] - 1] == [""]
    tree[b[i] - 1] = [(a[i] - 1)]
  else
    tree[b[i] - 1] << (b[i] - 1)
  end  
end

searched = Array.new(tree.length, false)

start = 0
puts "tree: #{tree}"
stack = tree[start]
step = 0
while stack.length > 0
  step += 1

  node = stack.pop
  searched[node] = false

  next_node = tree[node].select {|node| !searched[node] }
  next_node.each do |node| 
    stack.push(node)
  end

  puts "process stack: #{stack}"
  if step == 3
    break
  end
end

puts "stack last: #{stack.last}"

