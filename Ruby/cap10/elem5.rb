p ['apple', 'orange', 'banana']

# %wで文字列の配列を作成する
p %w!apple orange banana! # => ["apple", "orange", "banana"]

# %wで文字列の配列を作成する(丸カッコで囲む)
p %w(apple orange banana) # => ["apple", "orange", "banana"]

# 空白文字(スペースや改行)が連続した場合も1つの区切り文字と見なされる
p %w(
apple
orange
banana
) # => ["apple", "orange", "banana"]
