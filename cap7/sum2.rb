a = [1, 2, 3]
sum = 0
a.each do |x|
  sum += x
end
puts sum

# このように、eachメソッドを使って、配列の要素を一つずつ取り出し、配列の要素を足し合わせている