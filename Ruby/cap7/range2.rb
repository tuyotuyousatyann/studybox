# ..を使うと５が範囲に含まれる
range = 1..5
p range.include?(0) # => false
p range.include?(1) # => true
p range.include?(4.9) # => true
p range.include?(5) # => true
p range.include?(6) # => false

# ...を使うと５が範囲に含まれない
range = 1...5
p range.include?(0) # => false
p range.include?(1) # => true
p range.include?(4.9) # => true
p range.include?(5) # => false
p range.include?(6) # => false
