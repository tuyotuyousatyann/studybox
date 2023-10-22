[1, 2].none?{|x| x == 0} #=> true
[1, 2].none?{|x| x == 1} #=> false

# 配列に含まれる要素が1つもない場合にtrueを返す。