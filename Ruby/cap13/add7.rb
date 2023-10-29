{}.size # => 0
{'x' => 1, 'y' => 2, 'z' => 3}.size # => 3

# sizeメソッドを使うと、ハッシュの要素の個数を調べることができる

# deleteメソッドを使うと、指定したキーに対応する要素を削除することができる
# 戻り値は削除された要素の値

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies.delete('japan') #=> "yen"
p currencies #=> {"us"=>"dollar", "india"=>"rupee"}
