h = Hash.new('hello')
a = h[:foo] # => "hello"
b = h[:bar] # => "hello"
p a.equal?(b) # => true
# 変数aと変数bはどちらもデフォルト値を返しているが、同じオブジェクトを参照している

# 変数aに破壊的な変更を適用すると、変数bの値も一緒に変わってしまう
a.upcase!
p a # => "HELLO"
p b # => "HELLO"

# Hash.newとブロックを組み合わせてデフォルト値を返すことで、問題を解決できる

h = Hash.new { 'hello' }
a = h[:foo] # => "hello"
b = h[:bar] # => "hello"
p a.equal?(b) # => false
# 変数aと変数bはどちらもデフォルト値を返しているが、異なるオブジェクトを参照している

# 変数aに破壊的な変更を適用しても、変数bの値は変わらない
a.upcase!
p a # => "HELLO"
p b # => "hello"
