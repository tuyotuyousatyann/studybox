# for 変数 in 配列やハッシュ
#  繰り返したい処理
# end

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
sum += n
end
puts sum # => 10

# doを入れて１行で書くことも可能

sum = 0
for n in numbers do sum += n end
p sum # => 10

# for文よりもeachメソッドを使う

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
sum += n
end
puts sum # => 10
