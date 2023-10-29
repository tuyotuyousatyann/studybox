# ブロックを使って、ブロックの戻り値をデフォルト値として使う

a = Array.new(5){ 'default' }
p a # => ["default", "default", "default", "default", "default"]

# 1番目の要素を取得する
str = a[0]
p str # => "default"

# 1番目の要素を大文字に変換する（破壊的変更）
str.upcase!
p str # => "DEFAULT"

# 1番目の要素だけが大文字になり、他は変わらない
p a # => ["DEFAULT", "default", "default", "default", "default"]

# 同じ値で同一のオブジェクトなのか、異なるオブジェクトなのかを確認する
