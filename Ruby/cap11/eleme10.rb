# 番号指定パラメータをつかない場合（ブロックパラメータが２つの場合）
['japan', 'us', 'italy'].map.with_index { |country, n| [n, country] }
# => [[0, "japan"], [1, "us"], [2, "italy"]]

# 番号指定パラメータを使う場合
['japan', 'us', 'itary'].map.with_index { [_2, _1] }
# => [[0, "japan"], [1, "us"], [2, "itary"]]
# _1は要素（ここでは文字列）、_2はインデックス（位置）を表している。
