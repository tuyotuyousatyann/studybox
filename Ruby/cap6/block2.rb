a = [1, 2, 3, 1, 2, 3]
# 配列から値が奇数の要素を削除する
a.delete_if do |n|
n.odd?
end
p a # => [2, 2]

# odd?は奇数ならtrue、偶数ならfalseを返す
# 配列から奇数の要素が削除される

# delete_ifメソッドは、配列の要素を順番に取り出し、ブロックの戻り値が真であれば、要素を削除する。