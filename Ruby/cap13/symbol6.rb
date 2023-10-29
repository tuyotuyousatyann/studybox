# ハッシュのキーをシンボルにする
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# シンボルを使って値を取り出す
p currencies[:us] #=> "dollar"

# 新しいキーと値の組み合わせを追加する
currencies[:italy] = 'euro'
p currencies #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee", :italy=>"euro"}

# =>ではなく、"シンボル: 値"の記法でハッシュを作成する（シンボルをキーにする場合）
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies[:us] #=> "dollar" # 値を取り出す場合は同じ
