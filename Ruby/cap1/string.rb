'これは文字列です'
"これも文字列です"

# ""で囲むと\nが改行になるが、''で囲むと\nはそのまま出力される
puts "こんにちは\nさようなら"
# => こんにちは
#    さようなら

# ""で囲むと式展開ができるが、''で囲むと式展開はできない
name = 'Alice'
puts "Hello, #{name}!" # => Hello, Alice!

# ""を使う文字列で、改行文字や式展開の機能を打ち消す場合は手前に\をつける

name = 'Alice'
puts "Hello, \#{name}!" # => Hello, #{name}!

# ''文字列の中に''を表現したい場合は、エスケープシーケンスの\'を使う

# 特別な意味を持つ文字の機能を打ち消し、文字列として扱うようにすることをエスケープ処理という

# 文字列が同じ値かどうか調べるには==を使う
# 異なる値かどうか調べるには!=を使う

'ruby' == 'ruby' # => true
'ruby' == 'Ruby' # => false
'ruby' != 'perl' # => true
'ruby' != 'ruby' # => false

# 文字列の大小を比較する場合は、<や>を使う

'a' < 'b' # => true
'a' < 'A' # => false
'abc' < 'def' # => true

# bytesメソッドを使うと、文字列をバイト値が配列として返す
'abc'.bytes # => [97, 98, 99]
'a'bytes # => [97]
'A'.bytes # => [65]

# 小数点以下の値が必要なときは、どちらかの値に小数点の.0をつける

1.0 / 2 # => 0.5

# 変数に整数があるとき、to_fメソッドを呼び出すと、整数を小数に変換できる

n = 1
n.to_f # => 1.0
n.to_f / 2 # => 0.5

# %は割り算の余りを求める演算子
8 % 3 # => 2

# **はべき乗を求める演算子
2 ** 3 # => 8