p Integer.ancestors # => [Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p Array.ancestors # => [Array, Enumerable, Object, Kernel, BasicObject]
p Class.ancestors # => [Class, Module, Object, Kernel, BasicObject]

# クラスの継承関係を確認する
# クラス名.ancestors
# 継承関係上の祖先をたどることができる