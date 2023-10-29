# 不等号を使ってn以上m未満、n以上m以下の判定をする

def liquid?(temperature)
# 0度以上100度未満であれば液体、と判定したい
0 <= temperature && temperature < 100
end

p liquid?(-1) # => false
p liquid?(0) # => true
p liquid?(99) # => true
p liquid?(100) # => false

# 範囲オブジェクトを使うと、このような判定をシンプルに書ける
def liquid?(temperature)
(0...100).include?(temperature)
end
liquid?(-1) # => false
liquid?(0) # => true
liquid?(99) # => true
liquid?(100) # => false
