require 'set'

a = Set[1, 2, 3]
b = Set[3, 4, 5]
p a | b # => #<Set: {1, 2, 3, 4, 5}>
p a - b # => #<Set: {1, 2}>
p a & b # => #<Set: {3}>
