dimension = [
# [length, width]
[ 10, 20 ],
[ 30, 40 ],
[ 50, 60 ],
]

# 面積の計算結果を格納する配列
areas = []
# 配列の要素分だけ、ブロックパラメータを用意すると、各要素の値が別々のブロックパラメータに格納される
dimension.each do |length, width|
areas << length * width
end
p areas # => [200, 1200, 3000]
