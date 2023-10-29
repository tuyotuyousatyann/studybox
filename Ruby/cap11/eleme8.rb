# ()を使わないときdimensionに配列の[10, 20]が渡される
dimension, i = [[10, 20], 0]
p dimension # => [10, 20]
p i # => 0

# ()を使うときは、配列の要素が別々の引数として渡される
(length, width), i = [[10, 20], 0]
p length # => 10
p width # => 20
p i # => 0
