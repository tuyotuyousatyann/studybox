p %w(big\ apple small\ apple orange) # => ["big apple", "small apple", "orange"]

prefix = 'This is'
p %W(#{prefix}\ an\ apple small\napple orange) # => ["This is an apple", "small\napple", "orange"]
