point = 7
day = 1

# 1日だったらポイント5倍

if day == 1
point *= 5
end
p point #=> 35

# if修飾子を使うと下記のように書くことができる

point = 7
day = 1
point *= 5 if day == 1
p point #=> 35

# 複雑な条件や複数の条件を持つ場合には、通常のif文を使用する方が読みやすい