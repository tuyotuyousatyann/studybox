numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three # => [1, 2, 4, 5]

# rejectメソッドは、selectメソッドの反対。
# 各要素に対してブロックを評価し、その戻り値が偽である要素を集めた配列を返す。