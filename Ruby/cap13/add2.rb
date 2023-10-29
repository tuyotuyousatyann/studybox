currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 既存の値を上書きする
currencies['japan'] = '円'

p currencies #=> {"japan"=>"円", "us"=>"dollar", "india"=>"rupee"}

# ハッシュ[キー] = 値
