# 文字列をハッシュのキーにする
currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# 文字列を使って値を取り出す
p currencies['japan'] #=> "yen"

# シンボルをハッシュのキーにする
currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
# シンボルを使って値を取り出す
p currencies[:japan] #=> "yen"

# シンボルが使われるのは、名前が文字列である必要がない場合
# ハッシュのキーにシンボルを使うと、文字列よりも高速に値を取り出すことができる
