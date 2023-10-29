curriencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
p curriencies.keys #=> [:japan, :us, :india]

# keysメソッドはハッシュのキーを配列として返す

curriencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
p curriencies.values #=> ["yen", "dollar", "rupee"]

# valuesメソッドはハッシュの値を配列として返す

# has_key?メソッドはハッシュの中に指定されたキーが存在するかどうかを調べる

curriencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
p curriencies.has_key?(:japan) #=> true
p curriencies.has_key?(:italy) #=> false
