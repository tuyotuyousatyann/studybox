# 番号指定パラメータを使わない場合（ブロックパラメータが１つ）
['1', '20', '300'].map { |s| s.rjust(3, '0') } # => ["001", "020", "300"]

# 番号指定パラメータを使う場合
['1', '20', '300'].map { _1.rjust(3,'0')}
# => ["001", "020", "300"]
