def order(item:, size:)
  "#{item}を#{size}サイズでください"
end

puts order(item: "カフェラテ", size: "ベンティ")
puts order(size: "ベンティ", item: "カフェラテ")

# キーワード引数の利点は、引数の順番を気にしなくてよいこと。引数の順序を変えても、意図した結果が得られる、最高。
# メソッド定義で引数名の後ろにコロンを書くと、キーワード引数になる
# プログラムが読みやすくなるというメリットがある