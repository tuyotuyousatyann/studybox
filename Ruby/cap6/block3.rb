# ブロックパラメータの名前はなんでもよい

# numbers.each do |i|
#   sum += i
# end

# numbers.each do |number|
#   sum += number
# end

# numbers.each do |element|
#   sum += element
# end

# ブロックパラメーターを使わないときは、ブロックパラメータ自体を省略できる

# numbers.each do
#   sum += 1
# end

# sum_valueは、ブロック内で初めて登場した変数。有効範囲はブロックの内部のみ

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
sum_value = n.even? ? n * 10 : n
sum += sum_value
end
p sum_value # => NameError

# ブロックの外に出ると、sum_valueは参照できない

# ブロックパラメータの名前をブロックの外にある変数の名前と同じにすると、ブロック内ではブロックパラメータの値が優先される
# 読み手を混乱させてしまうようなコードは避けるべき