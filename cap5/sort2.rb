p ["hitomi", "aichi", "tama"].sort # => ["aichi", "hitomi", "tama"]
p ["aya", "achi", "tama"].sort # => ["achi", "aya", "tama"]
p ["aya", "achi", "Tama"].sort # => ["Tama", "achi", "aya"]

# 配列の要素が全て小文字の場合は、大文字の"A"が一番小さいと判断される
