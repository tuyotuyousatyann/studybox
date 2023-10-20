hash = {}
hash.default = 0
array = "caffelatte".chars
array.each do |x|
  hash[x] += 1
end
p hash

# ハッシューのキーとして値を取得し、その値を1増やすことで、文字の出現回数をカウントしている。