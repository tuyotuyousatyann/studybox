def foo
  p bloch_given?
end

foo #=> false

foo do
end #=> true
 # block_given?メソッドは、ブロックが渡されたかどうかを判定するメソッド。