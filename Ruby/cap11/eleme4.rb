dimensions = [
# [length, width]
[ 10, 20 ],
[ 30, 40 ],
[ 50, 60 ],
]

# 面積の計算結果を格納する配列

areas = []
# ブロックパラメータが１つなら、ブロックパラメータの値が配列になる
dimensions.each do |dimension|
length = dimension[0]
width = dimension[1]
areas << length * width
end
p areas # => [200, 1200, 3000]
# areas << length * width は、寸法の幅と高さを掛け算して面積を計算し、その結果を areas 配列に追加している
