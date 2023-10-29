sum = 0
[[1, 2, 3]], [[4, 5, 6]].each do
_1.each do
sum += _1
end
end

# => 番号指定パラメータが２つ以上のブロックで使われていたらエラーになる

# 番号指定パラメータが使われているブロックが１つだけならエラーにならない

sum = 0
[[1, 2, 3], [4, 5, 6]].each do |values|
values.each do
sum += _1
end
end
p sum # => 21
