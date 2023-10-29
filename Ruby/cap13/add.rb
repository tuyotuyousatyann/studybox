currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# イタリアの通貨を追加する

currencies['italy'] = 'euro'

p currencies #=> {"japan"=>"yen", "us"=>"dollar", "india"=>"rupee", "italy"=>"euro"}

# ハッシュ[キー] = 値
# ハッシュにキーが存在しない場合は新しいキーと値の組み合わせが追加される
