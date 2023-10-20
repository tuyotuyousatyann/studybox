def order(item:, size: "ショート")
  "#{item}を#{size}サイズでください"
end

puts order(item: "カフェラテ")
puts order(item: "カフェラテ", size: "ベンティ")

# プログラムの引数にデフォルト値を設定することもできる
# 引数名: デフォルト値