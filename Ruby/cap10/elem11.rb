# 配列にデフォルト値を設定する場合の注意点

# 要素が5つで'default'をデフォルト値とする配列を作成する
a = Array.new(5, 'default')
p a # => ["default", "default", "default", "default", "default"]

# 1番目の要素を取得する
str = a[0]
p str # => "default"

# 1番目の要素を大文字に変換する（破壊的変更）
str.upcase!
p str # => "DEFAULT"

# 配列の要素すべてが大文字に変わってしまう
p a # => ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

# これを避けるためにはブロックを使う
