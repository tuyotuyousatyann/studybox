{a: 1, b: 2}.none?{|key, value| value == 0} #=> true
{a: 1, b: 2}.none?{|key, value| value == 1} #=> false

# ハッシュに含まれる要素が1つもない場合にtrueを返す。