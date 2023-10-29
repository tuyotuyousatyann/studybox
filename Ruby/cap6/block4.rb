# do...end
numbers = [1, 2, 3, 4]
sum = 0
# ブロックをあえて改行せずに書く
numbers.each do |n| sum += n end
p sum # => 10

# 読みづらいなぁ
# do...endを使わずに、{}でブロックを作る

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum # => 10

# 使い分けは、改行を含む長いブロックを書く場合はdo...end
# 一行でコンパクトに書きたい場合は{}を使う