currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 削除しようとしたキーがなければnilが返る

p currencies.delete('italy') #=> nil

# ブロックを渡すとキーが見つからない時の戻り値を作成できる

p currencies.delete('italy') { |key| "Not found: #{key}" } #=> "Not found: italy"
