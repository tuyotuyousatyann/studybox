["カフェラテ", "モカ", "コーヒー"].each do |drink|
  puts drink if drink.match?(/ラテ/) # match?メソッドは引数で渡した正規表現と文字列がマッチしたかどうかを調べる
end
