a = []
b = [2, 3]
a.push(1)
a.push(*b)
p a # => [1, 2, 3]
