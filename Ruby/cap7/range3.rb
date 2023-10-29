# ()で囲まずにメソッドを呼び出すとエラーになる

1..5.include?(1) # => NoMethodError: undefined method `include?' for 5:Fixnum
# ()で囲めばエラーにならない
(1..5).include?(1) # => true
# このように、メソッドの引数として範囲オブジェクトを渡す場合は、()で囲む必要がある
