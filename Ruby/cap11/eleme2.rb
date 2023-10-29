fruits = ['apple', 'orange', 'banana']
fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}" }
# =>["0: apple", "1: orange", "2: banana"]
# mapメソッドと組み合わせると、各要素とその添え字を取得できる

# with_indexメソッドはmap以外のメソッドとも組み合わせられる
fruits = ['apple', 'orange', 'banana']
# 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
p fruits # => ["apple", "banana"]
