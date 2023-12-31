p (1..5).to_a # => [1, 2, 3, 4, 5]
p (1...5).to_a # => [1, 2, 3, 4]

# Range.newでも範囲オブジェクトを作成できる

p ('a'..'e').to_a # => ["a", "b", "c", "d", "e"]
p ('a'...'e').to_a # => ["a","b", "c", "d"]

p ('bad'..'bag').to_a # => ["bad", "bae", "baf", "bag"]
p ('bad'...'bag').to_a # => ["bad", "bae", "baf"]

# 範囲オブジェクトに対してto_aメソッドを呼び出すと、値が連続する配列を作成できる