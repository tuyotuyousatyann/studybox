h = {}
p h[:foo] # => nil

# ハッシュに対して存在しないキーを指定するとnilが返る

h = Hash.new('hello')
p h[:foo] # => "hello"
