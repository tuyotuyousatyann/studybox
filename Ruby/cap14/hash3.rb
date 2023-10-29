# デフォルト値を返すだけでなく、ハッシュに指定されたキーとデフォルト値を同時に設定する

h = Hash.new { |hash, key| hash[key] = 'hello' }
p h[:foo] # => "hello"
p h[:bar] # => "hello"

p h # => {:foo=>"hello", :bar=>"hello"}
# ハッシュにキーと値が追加されている
