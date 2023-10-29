fruits = ['apple', 'orange', 'banana']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
# 0: apple
# 1: orange
# 2: banana
# 繰り返し処理をしつつ、処理している要素の添え字も取得することを叶えてくれる
# each_with_indexメソッド
